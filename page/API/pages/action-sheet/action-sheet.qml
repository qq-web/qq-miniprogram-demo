<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'action-sheet'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button type="primary" bindtap="actionSheetTap">弹出action sheet</button>
    </view>
  </view>

  <template is="foot" />
</view>
