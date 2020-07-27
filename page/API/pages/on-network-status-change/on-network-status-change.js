Page({
  onShareAppMessage() {
    return {
      title: '监听手机网络变化',
      path: 'page/API/pages/on-network-status-change/on-network-status-change'
    }
  },

  data: {
    isConnected: false,
  },
  onLoad() {
    const that = this
    qq.onNetworkStatusChange(function (res) {
      that.setData({
        isConnected: res.isConnected,
        networkType: res.networkType
      })
    })
  },
  onShow() {
    const that = this
    qq.getNetworkType({
      success(res) {
        that.setData({
          isConnected: res.networkType !== 'none',
          networkType: res.networkType
        })
      }
    })
  }
})
