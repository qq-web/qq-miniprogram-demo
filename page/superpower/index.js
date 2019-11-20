Page({
  onShareAppMessage() {
    return {
      title: '小程序官方特殊能力展示',
      path: 'page/superpower/index',
    };
  },

  data: {
    list: [
      {
        id: 'group',
        name: '打开群资料卡',
        url: 'group-profile/group-profile',
      },
      {
        id: 'qzone',
        name: '分享至QQ空间或好友',
        url: 'qzone/qzone',
      },
      {
        id: 'pc',
        name: '分享至PC',
        url: 'general-webpage-url/general-webpage-url',
      },
      {
        id: 'ad',
        name: '广告更多样式',
        url: 'ad-more-style/ad-more-style',
      },
      {
        id: 'official-dress',
        name: '设置官方装扮',
        url: 'set-official-dress/set-official-dress',
      },
      {
        id: 'custom-dress',
        name: '设置自定义装扮',
        url: 'set-custom-dress/set-custom-dress',
      },
      {
        id: 'publish',
        name: '空间说说发表',
        url: 'open-qzone-publish/open-qzone-publish',
      },
    ],
  },

  onShow() {
    this.leaveSetTabBarPage();
  },
  onHide() {
    this.leaveSetTabBarPage();
  },
  kindToggle(e) {
    const { id } = e.currentTarget; const
      { list } = this.data;
    for (let i = 0, len = list.length; i < len; ++i) {
      if (list[i].id === id) {
        if (list[i].url) {
          qq.navigateTo({
            url: `pages/${list[i].url}`,
          });
          return;
        }
        list[i].open = !list[i].open;
      } else {
        list[i].open = false;
      }
    }
    this.setData({
      list,
    });
  },
  enterSetTabBarPage() {
    this.setData({
      isSetTabBarPage: true,
    });
  },
  leaveSetTabBarPage() {
    this.setData({
      isSetTabBarPage: false,
    });
  },
});
