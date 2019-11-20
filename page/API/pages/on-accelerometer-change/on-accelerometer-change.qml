<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'onAccelerometerChange'}}"/>

  <view class="page-bd">
    
    <view class="info-wrap">
      <view class="info-wrap__hd">
        <text class="info-wrap__txt-tips">倾斜手机即可移动下方小球</text>
      </view>
      <view class="info-wrap__bd">
        <view class="info-wrap__canvas">
          <canvas class="info-wrap__canvas-ball" show="{{true}}" canvas-id="big-ball"></canvas>
          <canvas class="info-wrap__canvas-ball" show="{{true}}" canvas-id="small-ball"></canvas>
        </view>

        <view class="axis-wrap">
          <view class="axis-wrap__item">
            <text class="axis-wrap__txt">X: {{x}}</text>
          </view>
          <view class="axis-wrap__item">
            <text class="axis-wrap__txt">Y: {{y}}</text>
          </view>
          <view class="axis-wrap__item">
            <text class="axis-wrap__txt">Z: {{z}}</text>
          </view>
        </view>
      </view>
      <view class="info-wrap__ft">
        <button type="primary" bindtap="startAccelerometer" disabled="{{enabled}}">开始监听</button>
        <button bindtap="stopAccelerometer" disabled="{{!enabled}}">停止监听</button>
      </view>
    </view>
    
  </view>

  <template is="foot" />
</view>
