<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'createContext'}}"/>

  <view class="page-bd">
    <view class="page-section">
      <canvas class="canvas-element" canvas-id="canvas"></canvas>
      <view class="canvas-buttons">
        <block qq:for="{{methods}}" qq:for-item="method">
          <button class="canvas-button" bindtap="{{method}}">{{method}}</button>
        </block>

        <button class="canvas-button" bindtap="toTempFilePath">toTempFilePath</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
