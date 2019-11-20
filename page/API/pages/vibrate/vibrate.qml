<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'vibrate/Long/Short'}}"/>

  <view class="page-bd">
    <view class="page-section">
      <view class="btn-area">
        <button type="primary" bindtap="vibrateLong">长振动</button>
        <button bindtap="vibrateShort">短振动</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
