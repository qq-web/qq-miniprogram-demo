Page({
  onShareAppMessage() {
    return {
      title: '监听陀螺仪数据',
      path: 'page/API/pages/gyroscope/gyroscope'
    }
  },

  data: {
    x: 0,
    y: 0,
    z: 0,
    enabled: false
  },
  onLoad() {
    const that = this
    this.startGyroscope()
    qq.onGyroscopeChange(function (res) {
      that.setData({
        x: res.x.toFixed(2),
        y: res.y.toFixed(2),
        z: res.z.toFixed(2)
      })
      that.position.ax = Math.sin(res.x * Math.PI / 2)
      that.position.ay = -Math.sin(res.y * Math.PI / 2)
    })
  },
  startGyroscope() {
    if (this.data.enabled) {
      return
    }
    const that = this
    qq.startGyroscope({
      success() {
        that.setData({
          enabled: true
        })
      }
    })
  },
  stopGyroscope() {
    if (!this.data.enabled) {
      return
    }
    const that = this
    qq.stopGyroscope({
      success() {
        that.setData({
          enabled: false
        })
      }
    })
  },
  onUnload() {
    clearInterval(this.interval)
  }
})
