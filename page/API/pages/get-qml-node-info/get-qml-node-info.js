Page({
  onShareAppMessage() {
    return {
      title: '获取QML节点信息',
      path: 'page/API/pages/get-qml-node-info/get-qml-node-info',
    };
  },

  data: {
    metrics: [],
  },

  onReady() {
    this.getNodeInfo();
  },

  getNodeInfo() {
    const $ = qq.createSelectorQuery();
    const target = $.select('.target');
    target.boundingClientRect();

    $.exec((res) => {
      const rect = res[0];
      if (rect) {
        const metrics = [];
        // eslint-disable-next-line
        for (const key in rect) {
          if (key !== 'id' && key !== 'dataset') {
            const val = rect[key];
            metrics.push({ key, val });
          }
        }

        this.setData({ metrics });
      }
    });
  },

});
