const app = getApp()
const util = require('../../../../util/util.js')

const dataUrl = 'http://down.qq.com/qzone/demo_music/%E3%80%8A%E5%85%A8%E6%96%B0%E5%87%BA%E5%8F%91%E3%80%8BFN%20MMO.mp3'
Page({
  onShareAppMessage() {
    return {
      title: '背景音乐',
      path: 'page/API/pages/background-audio/background-audio'
    }
  },

  onLoad() {
    this._enableInterval()

    if (app.globalData.backgroundAudioPlaying) {
      this.setData({
        playing: true
      })
    }
  },
  data: {
    playing: false,
    playTime: 0,
    formatedPlayTime: '00:00:00',
    src: dataUrl
  },
  play() {
    const backgroundAudioManager = qq.getBackgroundAudioManager()

    // 设置了 src 之后会自动播放
    backgroundAudioManager.src = this.data.src
    this.setData({
      playing: true
    })
    app.globalData.backgroundAudioPlaying = true
    this._enableInterval()
  },
  seek(e) {
    clearInterval(this.updateInterval)
    const that = this
    const manager = qq.getBackgroundAudioManager()
    console.log('e.detail.value', e.detail.value, typeof e.detail.value)
    manager.seek(e.detail.value)
    manager.onSeeking(() => {
      console.log('seeking')
    })
    manager.onSeeked(() => {
      console.log('seeked')
      setTimeout(function () {
        that._enableInterval()
      }, 2000)
    })
    // qq.seekBackgroundAudio({
    //   position: e.detail.value,
    //   complete() {
    //     // 实际会延迟两秒左右才跳过去
    //     setTimeout(function () {
    //       that._enableInterval()
    //     }, 2000)
    //   }
    // })
  },
  pause() {
    const that = this
    qq.pauseBackgroundAudio({
      dataUrl,
      success() {
        that.setData({
          playing: false
        })
      }
    })
    app.globalData.backgroundAudioPlaying = false
  },
  stop() {
    const that = this
    qq.stopBackgroundAudio({
      dataUrl,
      success() {
        that.setData({
          playing: false,
          playTime: 0,
          formatedPlayTime: util.formatTime(0)
        })
      }
    })
    app.globalData.backgroundAudioPlaying = false
  },
  _enableInterval() {
    const that = this
    function update() {
      const manager = qq.getBackgroundAudioManager()
      that.setData({
        playTime: manager.currentTime ? manager.currentTime : 0,
        formatedPlayTime: manager.currentTime ? util.formatTime(manager.currentTime + 1) : '00:00:00'
      })
    }
    console.log('app.globalData.backgroundAudioPlaying', app.globalData.backgroundAudioPlaying)
    if (app.globalData.backgroundAudioPlaying) {
      update()
      this.updateInterval = setInterval(update, 500)
    }
  },
  onUnload() {
    clearInterval(this.updateInterval)
  }
})
