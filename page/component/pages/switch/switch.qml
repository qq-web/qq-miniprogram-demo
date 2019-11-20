<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'switch'}}"/>

  <view class="page-bd">
    <view class="checkbox-wrap">
      <view class="checkbox-wrap__hd">
        <text class="checkbox-wrap__txt-title">默认样式</text>
      </view>
      <view class="checkbox-wrap__bd">
        <label class="checkbox-wrap__label">
          <switch checked bindchange="switch1Change"/>
        </label>
        <label class="checkbox-wrap__label">
          <switch bindchange="switch2Change"/>
        </label>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">推荐展示样式</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">开启中</text>
          </view>
          <view class="qui-cell__ft">
            <switch checked />
          </view>
        </view>

        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">关闭</text>
          </view>
          <view class="qui-cell__ft">
            <switch />
          </view>
        </view>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
