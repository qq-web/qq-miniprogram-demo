Page({
  onShareAppMessage() {
    return {
      title: '监听罗盘数据',
      path: 'page/API/pages/on-compass-change/on-compass-change',
    };
  },

  data: {
    enabled: true,
    direction: 0,
  },
  onReady() {
    const that = this;
    qq.onCompassChange((res) => {
      that.setData({
        direction: parseInt(res.direction, 10),
      });
    });
  },
  startCompass() {
    if (this.data.enabled) {
      return;
    }
    const that = this;
    qq.startCompass({
      success() {
        that.setData({
          enabled: true,
        });
      },
    });
  },
  stopCompass() {
    if (!this.data.enabled) {
      return;
    }
    const that = this;
    qq.stopCompass({
      success() {
        that.setData({
          enabled: false,
        });
      },
    });
  },
});
