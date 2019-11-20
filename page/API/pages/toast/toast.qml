<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'toast'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <view class="body-view">
        <button bindtap="toast1Tap">点击弹出默认toast</button>
      </view>
      <view class="body-view">
        <button bindtap="toast2Tap">点击弹出设置duration的toast</button>
      </view>
      <view class="body-view">
        <button bindtap="toast3Tap">点击弹出显示loading的toast</button>
      </view>
      <view class="body-view">
        <button bindtap="hideToast">点击隐藏toast</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
