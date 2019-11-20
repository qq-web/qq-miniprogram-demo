<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'intersectionObserver'}}"/>

  <view class="page-bd">
    <view class="info-wrap">
      <text class="info-wrap__txt-title" qq:if="{{appear}}">
        小球出现
      </text>
      <text class="info-wrap__txt-title" qq:else>
        小球消失
      </text>
    </view>
    <view class="page-section">
      <scroll-view class="scroll-view" scroll-y>
        <view class="scroll-area" style="{{appear ? 'background: #ccc' : ''}}">
          <text class="notice">向下滚动让小球出现</text>
          <view class="filling"></view>
          <view class="ball"></view>
        </view>
      </scroll-view>
    </view>
  </view>

  <template is="foot" />
</view>
