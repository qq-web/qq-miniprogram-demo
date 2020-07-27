
Page({
  data: {
    modeItems: [
      { value: 'SD', title: 'SD'},
      { value: 'HD', title: 'HD'},
      { value: 'FHD', title: 'FHD'},
    ],
    mode :'SD',
    orientationItems: [
      { value: 'vertical', title: '竖屏推流' },
      { value: 'horizontal', title: '横屏推流' },
    ],
    orientation: 'vertical',
    enableCamera : true,
    focusPush: false,
    focusPlay: false,
    tapTime: '',		// 防止两次点击操作间隔太快
  },
  onShareAppMessage() {
    return {
      title: 'livepusher',
      path: 'page/superpower/pages/livepusher/livepusher'
    }
  },
  // handlerRecord() {
  //   qq.navigateTo({
  //     url: '/page/superpower/pages/livepusher-record/livepusher-record'
  //   })
  // },


  onPushInputTap: function () {
    this.setData({
      focusPush: true
    })
  },
  onPushInputChange: function (e) {
    this.setData({
      pushUrl: e.detail.value,
    })
  },
  onPlayInputTap: function () {
    this.setData({
      focusPlay: true
    })
  },
  onPlayInputChange: function (e) {
    this.setData({
      playUrl: e.detail.value,
    })
  },
  modeRadioChange: function (e) {
    this.setData({
      mode: e.detail.value
    });
  },
  orientationRadioChange: function (e) {
    this.setData({
      orientation: e.detail.value
    });
  },
  switchChange: function (e) {
    this.setData({
      enableCamera: !e.detail.value
    });
  },
  onScanQR: function () {
    var self = this;
    qq.scanCode({
      onlyFromCamera: true,
      success: (res) => {
        console.log(res);
        self.setData({
          pushUrl: res.result,
          playUrl: "",
        })
      }
    })
  },

  onNewUrlClick: function () {
    var self = this;

    qq.request({
      url: 'https://lvb.qcloud.com/weapp/utils/get_test_pushurl',
      success: (res) => {
        var pushUrl = res.data['url_push'];
        var rtmpUrl = res.data['url_play_rtmp'];
        var flvUrl = res.data['url_play_flv'];
        var hlsUrl = res.data['url_play_hls'];
        var accUrl = res.data['url_play_acc'];
        console.log(pushUrl);
        self.setData({
          pushUrl: pushUrl,
          playUrl: flvUrl,
        })

        qq.showToast({
          title: '获取地址成功',
        })
      },
      fail: (res) => {
        console.log(res);
        qq.showToast({
          title: '网络或服务器异常',
        })
      }
    })
  },
  onCopyPushUrl: function () {
    qq.setClipboardData({
      data: this.data.pushUrl,
    })
  },
  onCopyPlayUrl: function () {
    qq.setClipboardData({
      data: this.data.playUrl,
    })
  },
  startPush : function () {
    var self = this;
    // 防止两次点击操作间隔太快
    var nowTime = new Date();
    if (nowTime - this.data.tapTime < 1000) {
      return;
    }
    if (!self.data.pushUrl || self.data.pushUrl.indexOf("rtmp://") != 0) {
      qq.showModal({
        title: '提示',
        content: '推流地址不合法，请点击自动生成按钮先获取腾讯云推流地址',
        showCancel: false
      });
      return;
    }
    var url = '/page/superpower/pages/livepusher-record/livepusher-record?pushUrl=' + encodeURIComponent(self.data.pushUrl) + '&mode=' + self.data.mode + '&orientation=' + self.data.orientation + '&enableCamera=' + self.data.enableCamera;
    console.log(url);
    qq.navigateTo({
      url: url
    });
    
    self.setData({ 'tapTime': nowTime });
  }
})
