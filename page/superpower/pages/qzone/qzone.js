const app = getApp();

Page({
  data: {
    shareData: {
      title: 'showShareMenu',
      desc: '分享强化',
      path: '/page/superpower/pages/qzone/qzone',
    },
    entryDataHash: '',
  },

  onReady() {
    const options = app.globalData.appOnShowOptions;

    if (options && options.entryDataHash) {
      this.setData({
        entryDataHash: options.entryDataHash,
      });
    }
  },

  onShareAppMessage() {
    // 进行快速分享，直接分享到当前聊天窗口，page.onShareAppMessage需要带上entryDataHash参数
    if (this.data.entryDataHash) {
      this.data.shareData.entryDataHash = this.data.entryDataHash;
    }
    return this.data.shareData;
  },

  showBothShareMenu() {
    qq.showShareMenu({
      showShareItems: ['qq', 'qzone'],
    });
  },
  showFriendShareMenu() {
    qq.showShareMenu({
      showShareItems: ['qq'],
    });
  },
  showQzoneShareMenu() {
    qq.showShareMenu({
      showShareItems: ['qzone'],
    });
  },
});
