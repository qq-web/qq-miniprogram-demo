Page({
  onShareAppMessage() {
    return {
      title: '小程序官方特殊能力展示',
      path: 'page/superpower/index'
    }
  },

  data: {
    list: [
      {
        id: 'relationship',
        name: '关系链拓展',
        url: 'relationship/relationship',
        isNew: true
      },
      {
        id: 'share',
        name: '分享强化',
        url: 'qzone/qzone'
      },
      {
        id: 'msg',
        name: '消息触达',
        url: 'message/message'
      },
      {
        id: 'entry',
        name: '场景化入口',
        url: 'entry/entry',
        isNew: true
      },
      {
        id: 'ad',
        name: '广告能力',
        url: 'ad-more-style/ad-more-style'
      },
      {
        id: 'individuation',
        name: '个性化能力',
        url: 'individuation/individuation'
      },
      {
        id: 'media',
        name: '音视频能力',
        url: 'media/media'
      },
      {
        id: 'map',
        name: '线下能力',
        url: 'o2o/o2o',
        isNew: true
      },
      {
        id: 'wxPay',
        name: '微信支付能力',
        url: 'wxPay/wxPay'
      }
    ]
  },

  onShow() {
    qq.reportAnalytics('enter_home_programmatically', {})
    this.leaveSetTabBarPage()
  },
  onHide() {
    this.leaveSetTabBarPage()
  },
  kindToggle(e) {
    const id = e.currentTarget.id
    const list = this.data.list
    for (let i = 0, len = list.length; i < len; ++i) {
      if (list[i].id === id) {
        if (list[i].url) {
          console.log('pages/' + list[i].url)

          qq.navigateTo({
            url: 'pages/' + list[i].url
          })
          return
        }
        list[i].open = !list[i].open
      } else {
        list[i].open = false
      }
    }
    this.setData({
      list
    })
  },
  enterSetTabBarPage() {
    this.setData({
      isSetTabBarPage: true
    })
  },
  leaveSetTabBarPage() {
    this.setData({
      isSetTabBarPage: false
    })
  },
})
