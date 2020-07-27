Page({

  data: {
    color: '#FF596A',
    fontColor: '#000000',
    selectedButton: '1',
    selectedFontButton: '1',
  },
  onShareAppMessage() {
    return {
      title: '设置页面标题',
      path: 'page/API/pages/set-navigation-bar-title/set-navigation-bar-title'
    }
  },

  setColor(e) {
    if (e.target.id === 'button1') {
      this.setData({
        color: '#FF596A',
        selectedButton: '1',
      })
    }
    if (e.target.id === 'button2') {
      this.setData({
        color: '#FF9F40',
        selectedButton: '2',
      })
    }
    if (e.target.id === 'button3') {
      this.setData({
        color: '#FFCC00',
        selectedButton: '3',
      })
    }
    if (e.target.id === 'button4') {
      this.setData({
        color: '#00D96D',
        selectedButton: '4',
      })
    }
    if (e.target.id === 'button5') {
      this.setData({
        color: '#21D9C9',
        selectedButton: '5',
      })
    }
    if (e.target.id === 'button6') {
      this.setData({
        color: '#C773FF',
        selectedButton: '6',
      })
    }
  },

  setFontColor(e) {
    if (e.target.id === 'fontButton1') {
      this.setData({
        fontColor: '#000000',
        selectedFontButton: '1',
      })
    }
    if (e.target.id === 'fontButton2') {
      this.setData({
        fontColor: '#ffffff',
        selectedFontButton: '2',
      })
    }
  },

  setNaivgationBarTitle(e) {
    const title = e.detail.value.title
    const that = this
    qq.setNavigationBarTitle({
      title,
      success() {
        console.log('setNavigationBarTitle success')
        qq.setNavigationBarColor({
          frontColor: that.data.fontColor,
          backgroundColor: that.data.color,
          animation: {
            duration: 400,
            timingFunc: 'easeIn'
          }
        })
      },
      fail(err) {
        console.log('setNavigationBarTitle fail, err is', err)
      }
    })

    return false
  }
})
