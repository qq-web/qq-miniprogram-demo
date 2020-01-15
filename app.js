const { openIdUrl } = require('./config');

App({
  onLaunch(opts) {
    console.log('App Launch', opts);
  },
  onShow(opts) {
    console.log('App Show', opts);
    this.globalData.appOnShowOptions = opts;
    // qq.testNewApi()
  },
  onHide() {
    console.log('App Hide');
  },
  globalData: {
    hasLogin: false,
    openid: null,
    appOnShowOptions: null,
  },
  // lazy loading openid
  getUserOpenId(callback) {
    const self = this;

    if (self.globalData.openid) {
      callback(null, self.globalData.openid);
    } else {
      qq.login({
        success(data) {
          qq.request({
            url: openIdUrl,
            data: {
              code: data.code,
            },
            success(res) {
              console.log('拉取openid成功', res);
              self.globalData.openid = res.data.openid;
              callback(null, self.globalData.openid);
            },
            fail(res) {
              console.log('拉取用户openid失败，将无法正常使用开放接口等服务', res);
              callback(res);
            },
          });
        },
        fail(err) {
          console.log('qq.login 接口调用失败，将无法正常使用开放接口等服务', err);
          callback(err);
        },
      });
    }
  },
});
