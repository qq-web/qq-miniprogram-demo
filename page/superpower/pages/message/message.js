Page({
  data: {
    logo: 'msg',
    list: [{
      name: '模版消息',
      url: '/page/superpower/pages/message-template/message-template'
    }, {
      name: '订阅消息',
      url: '/page/superpower/pages/message-subscribe/message-subscribe'
    }]
  },
  onShareAppMessage() {
    return {
      title: '消息触达',
      path: 'page/superpower/pages/message/message'
    }
  }
})
