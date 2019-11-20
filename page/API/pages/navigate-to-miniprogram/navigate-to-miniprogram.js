Page({
  data: {

  },
  navigateToMiniProgram() {
    qq.navigateToMiniProgram({
      appId: '1108291530',
      success() {
        // 打开成功
      },
    });
  },
});
