Page({
  onReady() {
    this.videoContextV = qq.createVideoContext('vertical');
    this.videoContextH = qq.createVideoContext('horizontal');
  },
  onShareAppMessage() {
    return {
      title: 'ad',
      path: 'page/component/pages/ad/ad',
    };
  },

  data: {
    isMiniprogram: true,
    isSwipBShow: false,
    openId: '0',
    bgColor: '#ffffff',
    bgColorButton: '2',
    isCardOpen: true,
  },
  closeCard() {
    this.setData({
      isCardOpen: false,
    });
  },
  toggleSwipB() {
    this.setData({
      isSwipBShow: !this.data.isSwipBShow,
    });
  },
  testmove(e) {
    console.log('move');
    const touch = e.touches[0];
    const { pageX } = touch;
    if (!this.startX) {
      this.moveX = 0;
    } else {
      this.moveX += pageX - this.startX;
    }
    this.startX = pageX;
    if (Math.abs(this.moveX) > 50) {
      this.setData({
        isSwipAShow: false,
        isSwipBShow: false,
      });
    }
  },
  playVideoAd() {
    const videoAd = qq.createRewardedVideoAd({
      adUnitId: '67364c394f90c551db8a95f7f8b2f8e7',
    });
    videoAd.show();
  },
  playVideoAd2() {
    const videoAd = qq.createRewardedVideoAd({
      adUnitId: '35cb4b17f683e2cc376b4ec8ebe6d3bf',
    });
    videoAd.show();
  },
  changeAppType() {
    this.setData({
      isMiniprogram: !this.data.isMiniprogram,
    });
  },
  kindToggle(e) {
    this.setData({
      openId: e.currentTarget.id === this.data.openId ? '0' : e.currentTarget.id,
    });
    if (e.currentTarget.id === '4' && !this.data.isCardOpen) {
      this.setData({
        isCardOpen: true,
      });
    }
  },
  changeDarkColor() {
    console.log('dark');
    this.setData({
      bgColor: '#363636',
      bgColorButton: '0',
    });
  },
  changeMidColor() {
    this.setData({
      bgColor: '#E5F9FE',
      bgColorButton: '1',
    });
  },
  changeWhiteColor() {
    this.setData({
      bgColor: '#ffffff',
      bgColorButton: '2',
    });
  },
  navigateToWeb() {
    qq.navigateTo({ url: '../../../component/pages/web-view/web-view' });
  },
});
