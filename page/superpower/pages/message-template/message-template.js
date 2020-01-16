const { templateMessageUrl, openIdUrl } = require('../../../../config');

Page({
  data: {
    formId: '',
    openId: '',
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

  onShareAppMessage() {
    return {
      title: '模版消息',
      path: 'page/superpower/pages/message-template/message-template',
    };
  },

  formSubmit(e) {
    if (e.detail.formId) {
      this.data.formId = e.detail.formId;
      qq.showToast({
        title: 'formId获取成功',
        icon: 'success',
        duration: 2000,
      });
    } else {
      console.log('formId为空。', e.detail.value);
    }
  },

  sendMessage() {
    console.log('formId:', this.data.formId);
    console.log('openId:', this.data.openId);
    if (!this.data.formId || !this.data.openId) {
      qq.showToast({
        title: '请先获取formId',
        icon: 'none',
        duration: 2000,
      });
      return;
    }
    qq.request({
      url: templateMessageUrl,
      method: 'POST',
      data: {
        openId: this.data.openId,
        formId: this.data.formId,
        template_id: 'c3becff6cafdf08cb76d5a002b006969',
        page: 'pages/indexpage/superpower/pages/message-template/message-template',
        template_data: {
          keyword1: {
            value: '记得打卡哦',
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
