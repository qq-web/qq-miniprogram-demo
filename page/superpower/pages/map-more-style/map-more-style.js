Page({
  data: {},
  onShareAppMessage() {
    return {
      title: '地图底图样式',
      path: 'page/superpower/pages/map-more-style/map-more-style',
    };
  },
  regionchange(e) {
    console.log(e.type);
  },
  markertap(e) {
    console.log(e.markerId);
  },
  controltap(e) {
    console.log(e.controlId);
  },
});
