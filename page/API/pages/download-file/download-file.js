const { downloadExampleUrl } = require('../../../../config');

Page({
  onShareAppMessage() {
    return {
      title: '下载文件',
      path: 'page/API/pages/download-file/download-file',
    };
  },

  downloadImage() {
    const self = this;

    qq.downloadFile({
      url: downloadExampleUrl,
      success(res) {
        console.log('downloadFile success, res is', res);

        self.setData({
          imageSrc: res.tempFilePath,
        });
      },
      fail({ errMsg }) {
        console.log('downloadFile fail, err is:', errMsg);
      },
    });
  },
});
