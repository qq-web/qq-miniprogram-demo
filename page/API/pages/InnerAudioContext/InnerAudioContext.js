const util = require('../../../../util/util.js')

Page({
  onShareAppMessage() {
    return {
      title: 'InnerAudioContext',
      path: 'page/component/pages/InnerAudioContext/InnerAudioContext',
    }
  },

  data: {
    time: '00:00:00',
    title: '全新出发',
    singer: '腾讯二十周年主题曲',
    src: './album.jpg',
    isPlaying: false,
  },
  onLoad() {
    this.innerAudioContext = qq.createInnerAudioContext()
    this.innerAudioContext.src = 'http://down.qq.com/qzone/demo_music/%E3%80%8A%E5%85%A8%E6%96%B0%E5%87%BA%E5%8F%91%E3%80%8BFN%20MMM.wav'
  },
  play() {
    const that = this
    this.setData({
      isPlaying: true,
    })
    this.innerAudioContext.play()
    this.innerAudioContext.onTimeUpdate(() => {
      that.setData({
        time: util.formatTime(that.innerAudioContext.currentTime)
      })
    })
  },
  pause() {
    this.innerAudioContext.pause()
    this.setData({
      isPlaying: false,
    })
  },

  onUnload() {
    this.innerAudioContext.destroy()
  }
})
