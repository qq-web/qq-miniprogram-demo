<view class="index">
  <view class="index-hd">
    <image class="index-logo" src="../../image/index/logo-superpower.svg" mode="aspectFill"></image>
    <view class="index-desc">以下将演示小程序特殊能力，具体属性参数详见<navigator url="../../page/component/pages/web-view/web-view" class="index-navigator">QQ小程序开发文档</navigator></view>
  </view>
  <view class="index-bd">

    <view class="grid-list">
      <block qq:for-items="{{list}}" qq:key="{{item.id}}">
        <view id="{{item.id}}" class="grid-list__item {{item.isNew?'new':''}}" bindtap="kindToggle">
          <image class="grid-list__item-icon" src="../../image/common/{{item.id}}.svg" mode="aspectFill" />
          <text class="grid-list__item-title">{{item.name}}</text>
        </view>
      </block>
    </view>
  </view>
</view>
