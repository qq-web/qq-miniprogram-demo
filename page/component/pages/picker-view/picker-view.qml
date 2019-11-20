<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'picker-view'}}"/>

  <view class="page-bd">
    <view class="selected-date">{{year}}年{{month}}月{{day}}日{{isDaytime ? "白天" : "夜晚"}}</view>
    <picker-view indicator-style="height: 50px;" style="width: 100%; height: 300px;" value="{{value}}" bindchange="bindChange">
      <picker-view-column>
        <view qq:for="{{years}}" qq:key="{{years}}" style="line-height: 50px; text-align: center;">{{item}}年</view>
      </picker-view-column>
      <picker-view-column>
        <view qq:for="{{months}}" qq:key="{{months}}" style="line-height: 50px; text-align: center;">{{item}}月</view>
      </picker-view-column>
      <picker-view-column>
        <view qq:for="{{days}}" qq:key="{{days}}" style="line-height: 50px; text-align: center;">{{item}}日</view>
      </picker-view-column>
      <picker-view-column>
        <view class="icon-container">
          <image class="picker-icon" src="../../resources/kind/daytime.png" />
        </view>
        <view class="icon-container">
          <image class="picker-icon" src="../../resources/kind/night.png" />
        </view>
      </picker-view-column>
    </picker-view>
  </view>

  <template is="foot" />
</view>
