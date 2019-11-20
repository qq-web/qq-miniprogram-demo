Page({
  onShareAppMessage() {
    return {
      title: '消息提示框',
      path: 'page/API/pages/toast/toast',
    };
  },

  toast1Tap() {
    qq.showToast({
      title: '默认',
    });
  },

  toast2Tap() {
    qq.showToast({
      title: 'duration 3000',
      duration: 3000,
    });
  },

  toast3Tap() {
    qq.showToast({
      title: 'loading',
      icon: 'loading',
      duration: 5000,
    });
  },

  hideToast() {
    qq.hideToast();
  },
});
