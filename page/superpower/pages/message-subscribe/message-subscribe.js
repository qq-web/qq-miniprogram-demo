const { subscribeMessageUrl, openIdUrl } = require('../../../../config');

Page({
  data: {
    openId: '',
  },
  onShareAppMessage() {
    return {
      title: '订阅消息',
      path: 'page/superpower/pages/message-subscribe/message-subscribe',
    };
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
            that.data.openId = res.data.openid;
          },
          fail(res) {
            console.log('拉取用户openid失败，将无法正常使用开放接口等服务', res);
            qq.showToast({
              title: '拉取用户openid失败，请看log',
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
  getAuthorization() {
    qq.subscribeAppMsg({
      subscribe: true,
      success(res) {
        console.log('----subscribeAppMsg----success', res);
        qq.showToast({
          title: '授权成功',
          icon: 'success',
          duration: 2000,
        });
      },
      fail(res) {
        console.log('----subscribeAppMsg----fail', res);
      },
    });
  },

  sendMessage() {
    console.log('openId:', this.data.openId);
    if (!this.data.openId) {
      qq.showToast({
        title: '请先获取openId',
        icon: 'none',
        duration: 2000,
      });
      return;
    }
    qq.request({
      url: subscribeMessageUrl,
      method: 'POST',
      data: {
        openId: this.data.openId,
        template_id: '9ecf51539321295c155e54fac46a544f',
        page: 'pages/indexpage/superpower/pages/message-subscribe/message-subscribe',
        template_data: {
          keyword1: {
            value: `${new Date()}`,
          },
        },
      },
      success(result) {
        let msg = '发送成功';
        console.log('======', result);
        if (result.data.code || result.data.errcode) { // errorcode不为0
          console.log(result.data);
          msg = '发送失败，请看Log';
        }

        qq.showToast({
          title: msg,
          icon: 'none',
          duration: 2000,
        });
      },
      fail(e) {
        console.log(e);
      },
    });
  },
});
