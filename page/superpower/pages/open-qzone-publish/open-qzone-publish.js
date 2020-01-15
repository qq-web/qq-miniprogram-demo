Page({
  data: {},
  onShareAppMessage() {
    return {
      title: 'openQzonePublish',
      path: 'page/superpower/pages/open-qzone-publish/open-qzone-publish',
    };
  },
  openQzonePublish() {
    qq.openQzonePublish({

    });
  },
});
