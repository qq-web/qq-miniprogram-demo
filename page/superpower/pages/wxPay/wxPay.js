const {wxPayUrl} = require('../../../../config.js')

Page({
  data: {
    total_fee: 1
  },
  onLoad() {
  },
  handlePay() {
    // 下单
    qq.request({
      url: wxPayUrl,
      method: 'POST',
      data: {
        appType: 'miniprogram',
        total_fee: this.data.total_fee
      },
      success(res) {
        if (res.data) {
          const code = res.data.code
          const mwebUrl = res.data.mweb_url
          if (code === 0 && mwebUrl) {
            // 呼起微信支付
            qq.requestWxPayment({
              url: mwebUrl,
              referer: 'https://q.qq.com',
              success(res) {
                console.log('支付成功', res)
              },
              fail() {
                qq.showToast({
                  title: '支付失败',
                  icon: 'none'
                })
              }
            })
          } else {
            qq.showToast({
              title: '下单失败',
              icon: 'none'
            })
          }
        }
      },
      fail() {
        qq.showToast({
          title: '下单失败',
          icon: 'none'
        })
      }
    })
  },
})
