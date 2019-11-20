Page({
  data: {

  },
  getAvatar(info) {
    qq.getImageInfo({
      src: info.detail.userInfo.avatarUrl,
      success(res) {
        qq.saveImageToPhotosAlbum({
          filePath: res.path,
          success(result) {
            console.log('save result', result);
            qq.showToast({
              title: '保存成功',
            });
          },
          fail(err) {
            console.log('save err', err);
          },
        });
      },
    });
  },
  setAvatar1() {
    console.log('click setAvatar');
    qq.showModal({
      title: '提示',
      content: '请问是否更换您的头像？',
      success(res) {
        if (res.confirm) {
          qq.setOfficialDress({
            action: 'setAvatar',
            uin: 'self',
            item_id: '4020',
            success() {
              qq.showToast({
                title: '设置成功',
              });
            },
            fail(err) {
              console.log('err', err);
            },
          });
        }
      },
    });
  },
  setAvatar2() {
    console.log('click setAvatar');
    qq.showModal({
      title: '提示',
      content: '请问是否更换您的头像？',
      success(res) {
        if (res.confirm) {
          qq.setOfficialDress({
            action: 'setAvatar',
            uin: 'self',
            item_id: '3993',
            success() {
              qq.showToast({
                title: '设置成功',
              });
            },
            fail(err) {
              console.log('err', err);
            },
          });
        }
      },
    });
  },
});
