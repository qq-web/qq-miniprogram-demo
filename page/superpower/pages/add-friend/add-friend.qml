<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container">
  <template is="head" data="{{title: '添加好友'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button type="primary" bindtap="getAuthorization">点击授权被加好友权限</button>
      <button type="primary" open-type="addFriend" open-id="BB41AB36554CA3CD8DEF084B19FEB60B" bindaddfriend="addFriendHandler">点击加好友</button>
    </view>
  </view>

  <template is="foot"/>
</view>
