const example = require('./example.js')

Page({
  onShareAppMessage() {
    return {
      title: '创建画布',
      path: 'page/API/pages/canvas/canvas'
    }
  },

  onLoad() {
    this.context = qq.createContext()

    const methods = Object.keys(example)
    this.setData({
      methods
    })

    const that = this
    methods.forEach(function (method) {
      that[method] = function () {
        example[method](that.context)
        const actions = that.context.getActions()

        qq.drawCanvas({
          canvasId: 'canvas',
          actions
        })
      }
    })
  },

  toTempFilePath() {
    qq.canvasToTempFilePath({
      canvasId: 'canvas',
      success(res) {
        console.log(res)
      },

      fail(res) {
        console.log(res)
      }
    })
  }
})
