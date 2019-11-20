Page({
  data: {
    shareData: {
      title: '小程序示例',
      desc: '小程序官方示例',
      path: '/page/superpower/index',
    },
  },

  onShareAppMessage() {
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
