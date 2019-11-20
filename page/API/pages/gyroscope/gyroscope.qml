<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'onGyroscopeChange'}}"/>

  <view class="page-bd">
    <view class="page-section page-section_center">
      <text class="page-body-text">旋转手机即可获取旋转信息</text>
      <view class="page-body-canvas">
        <image src="./image.png"></image>
      </view>
      <view class="page-body-xyz">
        <text class="page-body-title">X: {{x}}</text>
        <text class="page-body-title">Y: {{y}}</text>
        <text class="page-body-title">Z: {{z}}</text>
      </view>
      <view class="page-body-controls">
        <button type="primary" bindtap="startGyroscope" disabled="{{enabled}}">开始监听</button>
        <button bindtap="stopGyroscope" disabled="{{!enabled}}">停止监听</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
