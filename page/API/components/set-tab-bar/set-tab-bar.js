const defaultTabBarStyle = {
  color: '#7F8389',
  selectedColor: '#0097E6',
  backgroundColor: '#ffffff',
};

const defaultItemName = '接口';

Component({
  data: {
    hasSetTabBarBadge: false,
    hasShownTabBarRedDot: false,
    hasCustomedStyle: false,
    hasCustomedItem: false,
    hasHiddenTabBar: false,
  },

  attached() {
    qq.pageScrollTo({
      scrollTop: 0,
      duration: 0,
    });
  },

  detached() {
    this.removeTabBarBadge();
    this.hideTabBarRedDot();
    this.showTabBar();
    this.removeCustomStyle();
    this.removeCustomItem();
  },

  methods: {
    navigateBack() {
      this.triggerEvent('unmount');
    },

    setTabBarBadge() {
      if (this.data.hasSetTabBarBadge) {
        this.removeTabBarBadge();
        return;
      }
      this.setData({
        hasSetTabBarBadge: true,
      });
      qq.setTabBarBadge({
        index: 1,
        text: '1',
      });
    },

    removeTabBarBadge() {
      this.setData({
        hasSetTabBarBadge: false,
      });
      qq.removeTabBarBadge({
        index: 1,
      });
    },

    showTabBarRedDot() {
      if (this.data.hasShownTabBarRedDot) {
        this.hideTabBarRedDot();
        return;
      }
      this.setData({
        hasShownTabBarRedDot: true,
      });
      qq.showTabBarRedDot({
        index: 1,
      });
    },

    hideTabBarRedDot() {
      this.setData({
        hasShownTabBarRedDot: false,
      });
      qq.hideTabBarRedDot({
        index: 1,
      });
    },

    showTabBar() {
      this.setData({ hasHiddenTabBar: false });
      qq.showTabBar();
    },

    hideTabBar() {
      if (this.data.hasHiddenTabBar) {
        this.showTabBar();
        return;
      }
      this.setData({ hasHiddenTabBar: true });
      qq.hideTabBar();
    },

    customStyle() {
      if (this.data.hasCustomedStyle) {
        this.removeCustomStyle();
        return;
      }
      this.setData({ hasCustomedStyle: true });
      qq.setTabBarStyle({
        color: '#FFF',
        selectedColor: '#1AAD19',
        backgroundColor: '#000000',
      });
    },

    removeCustomStyle() {
      this.setData({ hasCustomedStyle: false });
      qq.setTabBarStyle(defaultTabBarStyle);
    },

    customItem() {
      if (this.data.hasCustomedItem) {
        this.removeCustomItem();
        return;
      }
      this.setData({ hasCustomedItem: true });
      qq.setTabBarItem({
        index: 1,
        text: 'API',
      });
    },

    removeCustomItem() {
      this.setData({ hasCustomedItem: false });
      qq.setTabBarItem({
        index: 1,
        text: defaultItemName,
      });
    },
  },
});
