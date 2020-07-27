const texts = [
  'QQ小程序',
  '连接年轻用户的新方式',
  '覆盖8亿新生代活跃网民',
  '轻便快捷的开发模式',
  '还能在QQ内被轻松获取和传播',
  '快速进驻和多场景应用曝光',
  '助力小程序/小游戏进入亿级流量通道',
  '打通即时通讯(QQ)与异步社交(Qzone) ',
  '最大化地进行社交流量传播',
  '围绕广告、支付等商业化模式提供解决方案',
  '让开发者更专注于业务',
  '......'
]

Page({
  onShareAppMessage() {
    return {
      title: 'text',
      path: 'page/component/pages/text/text'
    }
  },

  data: {
    text: '',
    canAdd: true,
    canRemove: false
  },
  extraLine: [],

  add() {
    this.extraLine.push(texts[this.extraLine.length % 12])
    this.setData({
      text: this.extraLine.join('\n'),
      canAdd: this.extraLine.length < 12,
      canRemove: this.extraLine.length > 0
    })
    setTimeout(() => {
      this.setData({
        scrollTop: 99999
      })
    }, 0)
  },
  remove() {
    if (this.extraLine.length > 0) {
      this.extraLine.pop()
      this.setData({
        text: this.extraLine.join('\n'),
        canAdd: this.extraLine.length < 12,
        canRemove: this.extraLine.length > 0,
      })
    }
    setTimeout(() => {
      this.setData({
        scrollTop: 99999
      })
    }, 0)
  }
})
