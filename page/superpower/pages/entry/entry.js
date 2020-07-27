Page({
  data: {
    onShareAppMessage() {
      return {
        title: '场景化入口',
        path: '/page/superpower/pages/entry/entry'
      }
    },
    entryDataHash: ''
  },

  onReady() {

  },
  onShow() {
    const {entryDataHash} = qq.getLaunchOptionsSync()
    console.log(entryDataHash)
    if (entryDataHash) {
      this.setData({entryDataHash})
    }
  },
  saveAppToDesktop() {
    qq.saveAppToDesktop()
  },
  onAddGroupApp(...args) {
    console.log(args)
  }
})
