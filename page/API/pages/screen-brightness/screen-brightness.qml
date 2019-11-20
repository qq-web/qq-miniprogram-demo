<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'get/set/ScreenBrightness'}}"/>

  <view class="page-bd">
    <view class="info-wrap">
      <text class="info-wrap__txt-title">当前屏幕亮度</text>
      <text class="info-wrap__txt-result">{{screenBrightness}}</text>
    </view>

    <view class="others-wrap">
      <view class="others-wrap__hd">
        <text class="others-wrap__txt">设置屏幕亮度</text>
      </view>
      <view class="others-wrap__bd">
        <slider bindchange="changeBrightness" value="{{screenBrightness}}" min="0" max="1" step="0.1"/>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
