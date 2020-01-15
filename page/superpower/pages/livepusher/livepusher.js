
Page({
  data: {
    modeItems: [
      { value: 'SD', title: 'SD' },
      { value: 'HD', title: 'HD' },
      { value: 'FHD', title: 'FHD' },
    ],
    mode: 'SD',
    orientationItems: [
      { value: 'vertical', title: '竖屏推流' },
      { value: 'horizontal', title: '横屏推流' },
    ],
    orientation: 'vertical',
    enableCamera: true,
    focusPush: false,
    focusPlay: false,
    tapTime: '', // 防止两次点击操作间隔太快
  },
  onShareAppMessage() {
    return {
      title: 'livepusher',
      path: 'page/superpower/pages/livepusher/livepusher',
    };
  },
  // handlerRecord() {
  //   qq.navigateTo({
  //     url: '/page/superpower/pages/livepusher-record/livepusher-record'
  //   })
  // },


  onPushInputTap() {
    this.setData({
      focusPush: true,
    });
  },
  onPushInputChange(e) {
    this.setData({
      pushUrl: e.detail.value,
    });
  },
  onPlayInputTap() {
    this.setData({
      focusPlay: true,
    });
  },
  onPlayInputChange(e) {
    this.setData({
      playUrl: e.detail.value,
    });
  },
  modeRadioChange(e) {
    this.setData({
      mode: e.detail.value,
    });
  },
  orientationRadioChange(e) {
    this.setData({
      orientation: e.detail.value,
    });
  },
  switchChange(e) {
    this.setData({
      enableCamera: !e.detail.value,
    });
  },
  onScanQR() {
    const self = this;
    qq.scanCode({
      onlyFromCamera: true,
      success: (res) => {
        console.log(res);
        self.setData({
          pushUrl: res.result,
          playUrl: '',
        });
      },
    });
  },

  onNewUrlClick() {
    const self = this;

    qq.request({
      url: 'https://lvb.qcloud.com/weapp/utils/get_test_pushurl',
      success: (res) => {
        const pushUrl = res.data.url_push;
        const flvUrl = res.data.url_play_flv;
        // const rtmpUrl = res.data.url_play_rtmp;
        // const hlsUrl = res.data.url_play_hls;
        // const accUrl = res.data.url_play_acc;
        console.log(pushUrl);
        self.setData({
          pushUrl,
          playUrl: flvUrl,
        });

        qq.showToast({
          title: '获取地址成功',
        });
      },
      fail: (res) => {
        console.log(res);
        qq.showToast({
          title: '网络或服务器异常',
        });
      },
    });
  },
  onCopyPushUrl() {
    qq.setClipboardData({
      data: this.data.pushUrl,
    });
  },
  onCopyPlayUrl() {
    qq.setClipboardData({
      data: this.data.playUrl,
    });
  },
  startPush() {
    const self = this;
    // 防止两次点击操作间隔太快
    const nowTime = new Date();
    if (nowTime - this.data.tapTime < 1000) {
      return;
    }
    if (!self.data.pushUrl || self.data.pushUrl.indexOf('rtmp://') !== 0) {
      qq.showModal({
        title: '提示',
        content: '推流地址不合法，请点击自动生成按钮先获取腾讯云推流地址',
        showCancel: false,
      });
      return;
    }
    const url = `/page/superpower/pages/livepusher-record/livepusher-record?pushUrl=${encodeURIComponent(self.data.pushUrl)}&mode=${self.data.mode}&orientation=${self.data.orientation}&enableCamera=${self.data.enableCamera}`;
    console.log(url);
    qq.navigateTo({
      url,
    });

    self.setData({ tapTime: nowTime });
  },
});
