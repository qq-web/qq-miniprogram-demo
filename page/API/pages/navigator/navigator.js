Page({
  onShareAppMessage() {
    return {
      title: '页面跳转',
      path: 'page/API/pages/navigator/navigator'
    }
  },

  navigateTo() {
    qq.navigateTo({url: './navigator'})
  },

  navigateBack() {
    qq.navigateBack()
  },

  redirectTo() {
    qq.redirectTo({url: './navigator'})
  },

  switchTab() {
    qq.switchTab({url: '/page/component/index'})
  },

  reLaunch() {
    qq.reLaunch({url: '/page/component/index'})
  }
})
