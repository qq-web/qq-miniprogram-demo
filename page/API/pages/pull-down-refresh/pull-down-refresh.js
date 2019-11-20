Page({
  onShareAppMessage() {
    return {
      title: '下拉刷新',
      path: 'page/API/pages/pull-down-refresh/pull-down-refresh',
    };
  },

  onPullDownRefresh() {
    qq.showToast({
      title: '正在加载...',
      icon: 'loading',
    });
    console.log('onPullDownRefresh', new Date());
  },

  stopPullDownRefresh() {
    qq.stopPullDownRefresh({
      complete(res) {
        qq.hideToast();
        console.log(res, new Date());
      },
    });
  },
});
