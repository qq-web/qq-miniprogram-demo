<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'view'}}"/>

  <view class="page-bd">
    <view class="page-section">
      <view class="page-section-title">
        <text>flex-direction: row\n横向布局</text>
      </view>
      <view class="page-section-spacing">
        <view class="flex-wrp" style="flex-direction:row;">
          <view class="flex-item demo-text-1"></view>
          <view class="flex-item demo-text-2"></view>
          <view class="flex-item demo-text-3"></view>
        </view>
      </view>
    </view>
    <view class="page-section">
      <view class="page-section-title">
        <text>flex-direction: column\n纵向布局</text>
      </view>
      <view class="flex-wrp" style="flex-direction:column;">
        <view class="flex-item flex-item-V demo-text-1"></view>
        <view class="flex-item flex-item-V demo-text-2"></view>
        <view class="flex-item flex-item-V demo-text-3"></view>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>