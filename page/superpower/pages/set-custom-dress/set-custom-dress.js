Page({
  data: {
    imagePath: '',
  },
  onShareAppMessage() {
    return {
      title: '设置自定义装扮',
      path: 'page/superpower/pages/set-custom-dress/set-custom-dress',
    };
  },
  chooseImage() {
    const that = this;
    qq.chooseImage({
      count: 1,
      sourceType: ['album', 'camera'],
      success(res) {
        that.setData({
          imagePath: res.tempFilePaths[0],
        });
      },
    });
  },
  downloadImage() {
    const that = this;
    qq.getImageInfo({
      src: './avatar.png',
      success(res) {
        that.setData({
          imagePath: res.path,
        });
      },
    });
  },
  setAvatar() {
    qq.getImageInfo({
      src: './avatar.png',
      success(resPath) {
        qq.showModal({
          title: '提示',
          content: '请问是否更换您的头像？',
          success(res) {
            if (res.confirm) {
              qq.setCustomDress({
                action: 'uploadAvatar',
                path: resPath.path,
                success() {
                  qq.showToast({
                    title: '设置成功',
                  });
                },
                fail() {
                  qq.showToast({
                    title: '设置失败',
                  });
                },
              });
            }
          },
        });
      },
    });
  },
});
