<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'navigationBarLoading'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button type="primary" bindtap="showNavigationBarLoading">显示加载动画</button>
      <button bindtap="hideNavigationBarLoading">隐藏加载动画</button>
    </view>
  </view>

  <template is="foot" />
</view>
