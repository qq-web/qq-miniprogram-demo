<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'createSelectorQuery'}}"/>

  <view class="page-bd">
    <view class="page-section">
      <movable-area>
        <movable-view class="target" x="{{x}}" y="{{y}}" direction="all" bindchange="getNodeInfo">
          Drag
        </movable-view>
      </movable-area>
    </view>

    <view class="page-section">
      <view class="metric">
        <view class="metric__item" qq:for="{{ metrics }}" qq:key="{{item.key}}">
          <text class="metric__txt-label">{{ item.key }}</text>
          <text class="metric__txt">{{ item.val }}</text>
        </view>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
