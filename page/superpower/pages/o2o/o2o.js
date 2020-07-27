Page({
  data: {
    logo: 'map',
    list: [{
      name: '地图',
      url: '/page/superpower/pages/map/map'
    }, {
      name: '获取用户收货地址',
      url: '/page/superpower/pages/address/address',
      isNew: true
    }]
  },
  onShareAppMessage() {
    return {
      title: '线下能力',
      path: 'page/superpower/pages/o2o/o2o'
    }
  }
})
