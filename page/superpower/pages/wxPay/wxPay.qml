<view class="container grayPage">
  <view class="page-hd pay-info">
    <view class="pay-title">微信支付</view>
    <view>
      共 <text class="pay-total-fee">{{ total_fee / 100 }}</text
      >元</view
    >
  </view>
  <view class="page-bd">
    <view class="btn-area">
      <button bind:tap="handlePay">去支付</button>
    </view>
  </view>
</view>
