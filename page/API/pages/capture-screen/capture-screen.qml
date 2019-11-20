<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'onUserCaptureScreen'}}"/>

  <view class="page-bd">
    <view class="page-body-info" hidden="true">
      <view class="page-body-title">请进行屏幕截屏</view>
      <text class="page-body-text">截屏事件{{ captured ? "已" : "未" }}触发</text>
    </view>

    <view class="info-wrap">
      <view class="info-wrap__txt-title">请进行屏幕截屏</view>
      <view class="info-wrap__txt">截屏事件{{ captured ? "已" : "未" }}触发</view>
    </view>
  </view>

  <template is="foot" />
</view>
