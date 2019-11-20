Page({
  onShareAppMessage() {
    return {
      title: '屏幕亮度',
      path: 'page/API/pages/screen-brightness/screen-brightness',
    };
  },

  data: {
    screenBrightness: 0,
  },

  onLoad() {
    this.updateScreenBrightness();
  },

  changeBrightness(e) {
    const value = Number.parseFloat(
      (e.detail.value).toFixed(1),
    );
    qq.setScreenBrightness({
      value,
      success: () => {
        this.updateScreenBrightness();
      },
    });
  },

  updateScreenBrightness() {
    qq.getScreenBrightness({
      success: (res) => {
        this.setData({
          screenBrightness: Number.parseFloat(
            res.value.toFixed(1),
          ),
        });
      },
      fail(err) {
        console.error(err);
      },
    });
  },
});
