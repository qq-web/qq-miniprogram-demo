<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'onNetworkStatusChange'}}"/>

  <view class="page-bd">
    <view class="page-section">

      <view class="info-wrap">
        <text class="info-wrap__txt-title">网络状态</text>
        <block qq:if="{{isConnected === false}}">
          <text class="info-wrap__txt">没有网络连接</text>
        </block>
        <block qq:if="{{isConnected === true}}">
          <text class="info-wrap__txt-wifi">{{networkType}}</text>
        </block>
      </view>

    </view>
  </view>

  <template is="foot" />
</view>
