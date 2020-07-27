
Page({
  data: {},
  onShareAppMessage() {
    return {
      title: '添加好友',
      path: 'page/superpower/pages/add-friend/add-friend'
    }
  },
  getAuthorization() {
    qq.authorize({
      scope: 'setting.addFriend',
      success() {
        qq.showToast({
          title: '授权成功',
          icon: 'success',
          duration: 2000
        })
      },
      fail(e) {
        console.error(e)
      }
    })
  },
  addFriendHandler(e) {
    console.log(e)
  },

  onAddFriendError(a, b) {
    console.error(a, b)
  }
})
