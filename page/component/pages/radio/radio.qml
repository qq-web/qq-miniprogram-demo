<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'radio'}}"/>

  <view class="page-bd">
    <view class="checkbox-wrap">
      <view class="checkbox-wrap__hd">
        <text class="checkbox-wrap__txt-title">默认样式</text>
      </view>
      <view class="checkbox-wrap__bd">
        <label class="checkbox-wrap__label">
          <radio value="r1" checked="true"/>选中
        </label>
        <label class="checkbox-wrap__label">
          <radio value="r2" />未选中
        </label>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">推荐展示样式</text>
      </view>
      <view class="qui-cell-group__bd">
        <radio-group bindchange="radioChange">
          <label class="qui-cell" qq:for="{{items}}" qq:key="{{item.value}}">
            <view class="qui-cell__hd">
              <radio value="{{item.value}}" checked="true"/>
            </view>
            <view class="qui-cell__bd">
              <text class="qui-cell__txt">{{item.name}}</text>
            </view>
          </label>
        </radio-group>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
