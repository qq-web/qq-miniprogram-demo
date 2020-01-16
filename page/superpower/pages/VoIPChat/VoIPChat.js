const CryptoJs = require('crypto-js');
const { openIdUrl } = require('../../../../config');

const groupId = 'DEMO_156802202';
const appId = 1109548205;

// 指定大小写字母和数据为字符集
const CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

// 返回指定长度的随机字符串
function genNonceStr(length = 32) {
  const max = CHARS.length;
  let nonce = '';
  for (let i = 0; i < length; i++) {
    nonce += CHARS.charAt(Math.floor(Math.random() * max));
  }
  return nonce;
}


Page({
  data: {
    mute_microphone: false,
    mute_earphone: false,
    count: 0,
    session_key: '',

  },
  onShareAppMessage() {
    return {
      title: '实时语音',
      path: 'page/superpower/pages/VoIPChat/VoIPChat',
    };
  },

  invite() {

  },

  // 加入会话需要签名验证
  // https://q.qq.com/wiki/develop/miniprogram/API/media/voip.html
  getSignature(nonceStr, timeStamp) {
    const sessionKey = this.data.session_key;

    const signature = CryptoJs.HmacSHA256([appId, groupId, nonceStr, timeStamp].sort().join(''), sessionKey);
    return signature.toString();
  },
  joinVoIPChat() {
    const nonceStr = genNonceStr(18);
    const timeStamp = Number(String(Number(new Date())).substring(0, 10));
    const signature = this.getSignature(nonceStr, timeStamp);
    qq.joinVoIPChat({
      signature,
      nonceStr,
      timeStamp,
      groupId,
      muteConfig: {
        muteMicrophone: this.data.mute_microphone,
        muteEarphone: this.data.mute_earphone,
      },
      success: (res) => {
        if (res.errCode) {
          console.error(res.errCode, res.errMsg);
        } else {
          console.log(res.openIdList);
          this.setData({
            count: res.openIdList.length,
          });
          // 监听实时语音通话成员在线状态变化事件。有成员加入/退出通话时触发回调
          qq.onVoIPChatMembersChanged((r) => {
            const newCount = r.openIdList.length;
            if (newCount < this.data.count) {
              console.log('有成员退出会话');
            } else {
              console.log('有成员加入会话');
            }
            console.log(r.openIdList);
            this.setData({
              count: newCount,
            });
          });
          qq.onVoIPChatInterrupted((r) => {
            console.log('被动断开通话');
            console.log(r.errCode, r.errMsg);
          });
        }
      },
      fail: (e) => {
        console.log(e);
      },
    });
  },

  onLoad() {
    const that = this;
    qq.login({
      success(data) {
        qq.request({
          url: openIdUrl,
          method: 'POST',
          data: {
            js_code: data.code,
          },
          success(res) {
            that.data.session_key = res.data.session_key;
            that.joinVoIPChat();
          },
          fail(res) {
            console.log('拉取用户session_key失败，将无法正常使用开放接口等服务', res);
            qq.showToast({
              title: '拉取用户session_key失败，请看log',
              icon: 'none',
              duration: 2000,
            });
          },
        });
      },
      fail(e) {
        console.log(e);
      },
    });
  },
  exit() {
    const that = this;
    qq.exitVoIPChat({
      success() {
        that.setData({
          count: 0,
        });
        console.log('成功退出实时语音通话');
      },
      fail(e) {
        console.error('退出实时语音通话出错', e);
      },
    });
  },
  updataMuteConfig() {
    qq.updateVoIPChatMuteConfig({
      muteConfig: {
        muteMicrophone: this.data.mute_microphone,
        muteEarphone: this.data.mute_earphone,
      },
      success: () => {
        console.log('更新实时语音通话静音设置成功');
      },
      fail: (e) => {
        console.error('更新实时语音通话静音设置失败', e);
      },
    });
  },
  onMicrophoneSwitchChange() {
    this.setData({
      mute_microphone: !this.data.mute_microphone,
    });
    this.updataMuteConfig();
  },
  onEarphoneSwitchChange() {
    this.setData({
      mute_earphone: !this.data.mute_earphone,
    });
    this.updataMuteConfig();
  },
});
