Page({
  data: {
    logo: 'media',
    list: [{
      name: 'liveplayer',
      url: '/page/superpower/pages/liveplayer/liveplayer'
    }, {
      name: 'livepusher',
      url: '/page/superpower/pages/livepusher/livepusher'
    }, {
      name: '实时语音',
      url: '/page/superpower/pages/VoIPChat/VoIPChat'
    }]
  },
  onShareAppMessage() {
    return {
      title: '音视频能力',
      path: 'page/superpower/pages/media/media'
    }
  }
})
