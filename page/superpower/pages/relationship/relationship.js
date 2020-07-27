Page({
  data: {
    logo: 'relationship',
    list: [{
      name: '添加好友',
      url: '/page/superpower/pages/add-friend/add-friend'
    }, {
      name: '一键加群（打开群资料卡）',
      url: '/page/superpower/pages/group-profile/group-profile'
    }, {
      name: '一键关注（打开公众号资料卡）',
      url: '/page/superpower/pages/public-profile/public-profile',
      isNew: true
    }]
  },
  onShareAppMessage() {
    return {
      title: '关系链拓展',
      path: 'page/superpower/pages/relationship/relationship'
    }
  }
})
