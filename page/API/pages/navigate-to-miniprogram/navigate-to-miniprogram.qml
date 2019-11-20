<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container">
  <template is="head" data="{{title: 'navigateToMiniProgram'}}"/>
  <view class="page-bd">
    <view class="btn-area">
		  <button type="primary" bindtap="navigateToMiniProgram">点击跳转至QQ小程序中心</button>
    </view>
  </view>
  <template is="foot"/>
</view>
