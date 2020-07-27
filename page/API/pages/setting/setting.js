Page({
  onShareAppMessage() {
    return {
      title: '设置',
      path: 'page/API/pages/setting/setting'
    }
  },

  data: {
    setting: {}
  },

  getSetting() {
    qq.getSetting({
      success: (res) => {
        console.log('res', res)
        this.setData({setting: res.authSetting})
      },
      fail: err => {
        console.log('err', err)
      }
    })
  }
})
