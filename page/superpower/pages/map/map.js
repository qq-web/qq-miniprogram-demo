
Page({
  data: {
    longitude: 113.934528,
    latitude: 22.540503,
    markers: [{
      longitude: 113.934528,
      latitude: 22.540503,
      name: '腾讯大厦',
    }],
    showScale: false,
    enableZoom: true,
    enableScroll: true,
    enableRotate: false,
    showCompass: false,
    enable3D: false,
    enableOverlooking: false,
    enableSatellite: false,
    enableTraffic: false,
    drawPolygon: false,
    polygons: [{
      points: [
        {
          longitude: 113.934528,
          latitude: 22.540503,
        },
        {
          longitude: 113.933790,
          latitude: 22.540576,
        },
        {
          longitude: 113.934456,
          latitude: 22.539880,
        },
      ],
      strokeWidth: 3,
      strokeColor: '#999999AA',
    }],
  },
  onShareAppMessage() {
    return {
      title: '地图',
      path: 'page/superpower/pages/map/map',
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
  toggle3d() {
    this.setData({
      enable3d: !this.data.enable3d,
    });
  },
  toggleShowCompass() {
    this.setData({
      showCompass: !this.data.showCompass,
    });
  },
  toggleOverlooking() {
    this.setData({
      enableOverlooking: !this.data.enableOverlooking,
    });
  },
  toggleZoom() {
    this.setData({
      enableZoom: !this.data.enableZoom,
    });
  },
  toggleScroll() {
    this.setData({
      enableScroll: !this.data.enableScroll,
    });
  },
  toggleRotate() {
    this.setData({
      enableRotate: !this.data.enableRotate,
    });
  },
  togglePolygon() {
    this.setData({
      drawPolygon: !this.data.drawPolygon,
    });
  },
  toggleSatellite() {
    this.setData({
      enableSatellite: !this.data.enableSatellite,
    });
  },
  toggleTraffic() {
    this.setData({
      enableTraffic: !this.data.enableTraffic,
    });
  },

});
