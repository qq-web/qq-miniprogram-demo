<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container">
  <template is="head" data="{{title: 'setOfficialDress'}}"/>

  <view class="page-bd">

    <view class="avatar-wrap">
      <view class="avatar-wrap__bd">
        <image src="./1.png" class="avatar-wrap__img" mode="aspectFill"></image>
      </view>
      <view class="avatar-wrap__ft">
        <button bindtap="setAvatar1" type="primary">设置头像1</button>
      </view>
    </view>

    <view class="avatar-wrap">
      <view class="avatar-wrap__bd">
        <image src="./2.png" class="avatar-wrap__img" mode="aspectFill"></image>
      </view>
      <view class="avatar-wrap__ft">
        <button bindtap="setAvatar2" type="primary">设置头像1</button>
      </view>
    </view>

  </view>

  <template is="foot"/>
</view>
