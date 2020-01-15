Page({
  data: {
    logo: 'individuation',
    list: [{
      name: '设置官方装扮',
      url: '/page/superpower/pages/set-official-dress/set-official-dress',
    }, {
      name: '设置个性化装扮',
      url: '/page/superpower/pages/set-custom-dress/set-custom-dress',
    }],
  },
  onShareAppMessage() {
    return {
      title: '个性化能力',
      path: 'page/superpower/pages/individuation/individuation',
    };
  },
});
