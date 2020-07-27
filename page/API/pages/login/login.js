const app = getApp()
Page({
  onShareAppMessage() {
    return {
      title: 'QQ登录',
      path: 'page/API/pages/login/login'
    }
  },

  onLoad() {
    this.setData({
      hasLogin: app.globalData.hasLogin
    })
  },
  data: {},
  login() {
    const that = this
    qq.login({
      success() {
        app.globalData.hasLogin = true
        that.setData({
          hasLogin: true
        })
      }
    })
  }
})
