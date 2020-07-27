Page({
  onShareAppMessage() {
    return {
      title: 'QML节点布局相交状态',
      path: 'page/API/pages/intersection-observer/intersection-observer'
    }
  },

  data: {
    appear: false
  },
  onLoad() {
    this._observer = qq.createIntersectionObserver(this)
    this._observer
      .relativeTo('.scroll-view')
      .observe('.ball', (res) => {
        console.log(res)
        this.setData({
          appear: res.intersectionRatio > 0
        })
      })
  },
  onUnload() {
    if (this._observer) this._observer.disconnect()
  }
})
