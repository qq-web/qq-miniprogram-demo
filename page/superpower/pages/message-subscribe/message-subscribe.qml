<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container">
  <template is="head" data="{{title: '订阅消息'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button type="primary" bindtap="getAuthorization">获取订阅权限</button>
      <button type="primary" bindtap="sendMessage">发送订阅消息</button>
      <view class="page-tips">1天最多发送1条订阅消息</view>
    </view>
  </view>

  <template is="foot"/>
</view>
