<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'Login'}}"/>

  <view class="page-bd">
    <view class="page-section">
      <block qq:if="{{hasLogin === true}}">
        <text class="page-body-title">已登录</text>
        <text class="page-body-text">每个QQ号中仅需登录 1 次，后续每次进入页面即可根据QQ id 自动拉取用户信息</text>
      </block>
      <block qq:if="{{hasLogin === false}}">
        <text class="page-body-text">每个QQ号中仅需登录一次</text>
        <button class="page-body-button" type="primary" bindtap="login">QQ登录</button>
      </block>
    </view>
  </view>

  <template is="foot" />
</view>
