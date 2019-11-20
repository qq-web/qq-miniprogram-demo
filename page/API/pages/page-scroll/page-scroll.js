Page({
  onShareAppMessage() {
    return {
      title: '页面滚动',
      path: 'page/API/pages/page-scroll/page-scroll',
    };
  },

  scrollToTop() {
    qq.pageScrollTo({
      scrollTop: 0,
      duration: 300,
    });
  },

  scrollToBottom() {
    qq.pageScrollTo({
      scrollTop: 3000,
      duration: 300,
    });
  },
});
