<view class="x-list">
  <view qq:if="logo" class="x-list__hd">
    <image class="x-list__logo" src="../../../../image/common/{{logo}}.svg" mode="aspectFill" />
  </view>

  <view class="x-list__bd">
    <view qq:for="{{list}}" qq:key="{{index}}" class="x-list__item" data-url="{{item.url}}" bind:tap="navigateTo">
      <view class="x-list__item-name">{{item.name}}</view>
      <image class="x-list__item-more" src="../../../../image/common/icon-arrow-right@2x.svg"  mode="aspectFill" />
    </view>
  </view>
</view>