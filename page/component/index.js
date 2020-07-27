Page({
  onShow() {
    qq.reportAnalytics('enter_home_programmatically', {})
  },
  onShareAppMessage() {
    return {
      title: '小程序官方组件展示',
      path: 'page/component/index'
    }
  },

  data: {
    list: [
      {
        id: 'view',
        name: '视图容器',
        open: false,
        pages: [{name: 'view', path: 'view'},
          {name: 'scroll-view', path: 'scroll-view'},
          {name: 'swiper', path: 'swiper'},
          {name: 'movable-view', path: 'movable-view'},
          {name: 'cover-view', path: 'cover-view'}
        ]
      }, {
        id: 'content',
        name: '基础内容',
        open: false,
        pages: [{name: 'text', path: 'text'},
          {name: 'icon', path: 'icon'},
          {name: 'progress', path: 'progress'},
          {name: 'rich-text', path: 'rich-text'}]
      }, {
        id: 'form',
        name: '表单组件',
        open: false,
        pages: [{name: 'button', path: 'button'},
          {name: 'checkbox', path: 'checkbox'},
          {name: 'form', path: 'form'},
          {name: 'input', path: 'input'},
          {name: 'rich-text', path: 'rich-text'},
          {name: 'label', path: 'label'},
          {name: 'picker', path: 'picker'},
          {name: 'picker-view', path: 'picker-view'},
          {name: 'radio', path: 'radio'},
          {name: 'slider', path: 'slider'},
          {name: 'switch', path: 'switch'},
          {name: 'textarea', path: 'textarea'},
          {name: 'editor', path: 'editor'}]
      }, {
        id: 'nav',
        name: '导航',
        open: false,
        pages: [{name: 'navigator', path: 'navigator'}]
      }, {
        id: 'media',
        name: '媒体组件',
        open: false,
        pages: [{name: 'image', path: 'image'},
          {name: 'video', path: 'video'},
          {name: 'camera', path: 'camera'}]
      },
      {
        id: 'canvas',
        name: '画布',
        open: false,
        pages: [{name: 'canvas', path: 'canvas'}]
      }, {
        id: 'open',
        name: '开放能力',
        open: false,
        pages: [
          {name: 'open-data', path: 'open-data'},
          {name: 'web-view', path: 'web-view'}]
      }
    ]
  },

  kindToggle(e) {
    const id = e.currentTarget.id
    const list = this.data.list
    for (let i = 0, len = list.length; i < len; ++i) {
      if (list[i].id === id) {
        list[i].open = !list[i].open
      } else {
        list[i].open = false
      }
    }
    this.setData({
      list
    })
    qq.reportAnalytics('click_view_programmatically', {})
  }
})
