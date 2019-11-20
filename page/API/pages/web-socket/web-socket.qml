<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'WebSocket'}}"/>

  <view class="page-bd">
    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">Socket状态</text>
          </view>
          <view class="qui-cell__ft">
            <switch bindchange="toggleSocket" disabled="{{!hasLogin}}"/>
          </view>
        </view>

        <view class="qui-cell">
          <view class="qui-cell__bd">
            <text class="qui-cell__txt-label">消息</text>
          </view>
          <view class="qui-cell__ft">
            <text class="qui-cell__txt-tips">Hello, 小程序!</text>
          </view>
        </view>
      </view>
      <view class="qui-cell-group__ft">
        <button type="primary" size="40" bindtap="sendMessage" disabled="{{socketStatus != 'connected'}}" loading="{{loading}}">点我发送</button>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
