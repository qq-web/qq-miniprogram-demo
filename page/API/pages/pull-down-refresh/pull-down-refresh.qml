<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'on/stopPullDownRefresh'}}"/>

  <view class="page-bd">
    <view class="page-section">

      <view class="info-wrap">
        <view class="info-wrap__txt">下滑页面即可刷新</view>
      </view>

      <view class="btn-area">
        <button bindtap="stopPullDownRefresh">停止刷新</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
