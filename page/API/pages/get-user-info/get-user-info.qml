<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'getUserInfo'}}"/>

  <view class="page-bd">
    <view class="page-section">

      <view class="info-wrap">
        <text class="info-wrap__txt-title">用户信息</text>
        <block qq:if="{{hasUserInfo === false}}">
          <text class="info-wrap__txt">未获取</text>
          <text class="info-wrap__txt">点击蓝色按钮可获取用户头像及昵称</text>
        </block>
        <block qq:if="{{hasUserInfo === true}}">
          <image class="userinfo-avatar" src="{{userInfo.avatarUrl}}"></image>
          <text class="userinfo-nickname">{{userInfo.nickName}}</text>
        </block>
      </view>





      <view class="btn-area">
        <button type="primary" open-type="getUserInfo" bindgetuserinfo="getUserInfo">获取用户信息</button>
        <button bindtap="clear">清空</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
