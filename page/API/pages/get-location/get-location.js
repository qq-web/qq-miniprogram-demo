const util = require('../../../../util/util.js')

const formatLocation = util.formatLocation

Page({
  onShareAppMessage() {
    return {
      title: '获取位置',
      path: 'page/API/pages/get-location/get-location'
    }
  },

  data: {
    hasLocation: false,
  },
  getLocation() {
    const that = this
    qq.getLocation({
      type: 'gcj02',
      success(res) {
        console.log(res)
        that.setData({
          hasLocation: true,
          location: formatLocation(res.longitude, res.latitude)
        })
      },
      fail(err) {
        console.log('err', err)
      }
    })
  },
  clear() {
    this.setData({
      hasLocation: false
    })
  }
})
