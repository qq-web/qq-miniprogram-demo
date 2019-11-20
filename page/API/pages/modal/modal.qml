<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'modal'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button bindtap="modalTap">有标题的modal</button>
      <button bindtap="noTitlemodalTap">无标题的modal</button>
    </view>
  </view>

  <template is="foot" />
</view>
