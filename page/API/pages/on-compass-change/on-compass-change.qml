<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'onCompassChange'}}"/>

  <view class="page-bd">
    <view class="page-section page-section_center" hidden="true">
      <text class="page-body-text">旋转手机即可获取方位信息</text>

      <view class="controls">
        <button bindtap="startCompass" disabled="{{enabled}}">开始监听</button>
        <button bindtap="stopCompass" disabled="{{!enabled}}">停止监听</button>
      </view>
    </view>


    <view class="info-wrap">
      <view class="info-wrap__hd">
        <text class="info-wrap__txt-tips">旋转手机即可获取方位信息</text>
      </view>
      <view class="info-wrap__bd">
        <view class="direction">
          <view class="bg-compass-line"></view>
          <image class="bg-compass" src="compass.png" style="transform: rotate({{direction}}deg)"></image>
          <view class="direction-value">
            <text>{{direction}}</text>
            <text class="direction-degree">o</text>
          </view>
        </view>
      </view>
      <view class="info-wrap__ft">
        <button type="primary" bindtap="startCompass" disabled="{{enabled}}">开始监听</button>
        <button bindtap="stopCompass" disabled="{{!enabled}}">停止监听</button>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
