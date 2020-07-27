Page({
  data: {
    address: null
  },
  onShareAppMessage() {
    return {
      title: '收货地址',
      path: 'page/component/pages/address/address'
    }
  },

  getAddress() {
    qq.chooseAddress({
      success: (res) => {
        console.log('success', res)
        this.setData({
          address: res
        })
      },
      fail: (res) => {
        console.log('fail', res)
      }
    })
  }
})
