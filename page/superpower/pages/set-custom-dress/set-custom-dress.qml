<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container">
  <template is="head" data="{{title: 'setCustomDress'}}"/>

  <view class="page-bd">

    <view class="avatar-wrap">
      <view class="avatar-wrap__hd">
        <text class="avatar-wrap__txt-title">头像尺寸仅支持640*640px</text>
      </view>
      <view class="avatar-wrap__bd">
        <image src="./avatar.png" class="avatar-wrap__img" mode="aspectFill"></image>
      </view>
      <view class="avatar-wrap__ft">
        <button bindtap="setAvatar" type="primary">点击使用例图设置头像</button>
      </view>
    </view>

  </view>

  <template is="foot"/>
</view>
