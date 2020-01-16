Page({
  data: {
    frontCamera: true,
    cameraContext: {},
    pushUrl: '',
    mode: 'SD',
    muted: false,
    enableCamera: true,
    orientation: 'vertical',
    beauty: 6.3,
    whiteness: 3.0,
    backgroundMute: false,
    debug: false,
  },
  onShareAppMessage() {
    return {
      title: 'livepusher',
      path: 'page/superpower/pages/livepusher/livepusher',
    };
  },
  onSwitchCameraClick() {
    this.data.frontCamera = !this.data.frontCamera;
    this.setData({
      frontCamera: this.data.frontCamera,
    });
    this.data.cameraContext.switchCamera();
  },
  onBeautyClick() {
    if (this.data.beauty !== 0) {
      this.data.beauty = 0;
      this.data.whiteness = 0;
    } else {
      this.data.beauty = 6.3;
      this.data.whiteness = 3.0;
    }

    this.setData({
      beauty: this.data.beauty,
      whiteness: this.data.whiteness,
    });
  },

  onMuteClick() {
    this.setData({
      muted: !this.data.muted,
    });
  },
  onPushEvent(e) {
    console.log(e.detail.code);

    if (e.detail.code === -1307) {
      this.stop();
      qq.showToast({
        title: '推流多次失败',
      });
    }
  },

  stop() {
    this.setData({
      playing: false,
      pushUrl: '',
      mode: 'SD',
      muted: false,
      enableCamera: true,
      orientation: 'vertical',
      beauty: 6.3,
      whiteness: 3.0,
      backgroundMute: false,
      debug: false,
    });
    this.data.cameraContext.stop();
  },

  createContext() {
    const self = this;
    this.setData({
      cameraContext: qq.createLivePusherContext('camera-push'),
    }, () => {
      self.data.cameraContext.start();
    });
  },

  onLoad(options) {
    console.log('onLoad');
    this.setData({
      mode: options.mode,
      orientation: options.orientation,
      enableCamera: options.enableCamera !== 'false',
      pushUrl: decodeURIComponent(options.pushUrl),
    });
  },


  onReady() {
    this.createContext();

    qq.setKeepScreenOn({
      keepScreenOn: true,
    });
  },

  onShow() {
    qq.setKeepScreenOn({
      keepScreenOn: true,
    });
  },

  onUnload() {
    this.stop();

    qq.setKeepScreenOn({
      keepScreenOn: false,
    });
  },

});
