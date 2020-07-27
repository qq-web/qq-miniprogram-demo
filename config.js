/**
 * 小程序配置文件
 */

// 此处主机域名是腾讯云解决方案分配的域名
// 小程序后台服务解决方案：https://www.qcloud.com/solution/la

const host = '14592619.qcloud.la'

const config = {

  // 下面的地址配合云端 Server 工作
  host,

  // 登录地址，用于建立会话
  loginUrl: `https://${host}/login`,

  // 测试的请求地址，用于测试会话
  requestUrl: 'https://q.qq.com',

  // 用code换取openId
  openIdUrl: `https://q.qq.com/demo/openid`,

  // 测试的信道服务接口
  tunnelUrl: `https://${host}/tunnel`,

  // 生成支付订单的接口
  paymentUrl: `https://${host}/payment`,

  // 发送模板消息接口
  templateMessageUrl: `https://q.qq.com/demo/templateMessage`,

  // 存储示例value
  testValue: '520',

  // 发送订阅消息接口
  subscribeMessageUrl: `https://q.qq.com/demo/subscribeMessage`,

  // 上传文件接口
  uploadFileUrl: 'https://q.qq.com/upload',

  // 下载示例图片接口
  downloadExampleUrl: 'https://qzonestyle.gtimg.cn/aoi/sola/20190717151707_2LoGUX7hZ1.png'
}

module.exports = config
