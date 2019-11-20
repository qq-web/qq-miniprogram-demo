<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'canvas'}}"/>

  <view class="page-bd">
    <view class="page-body-wrapper">
      <canvas canvas-id="canvas" class="canvas"></canvas>
    </view>
  </view>

  <template is="foot" />
</view>


