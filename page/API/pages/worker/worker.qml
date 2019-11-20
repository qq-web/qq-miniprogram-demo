<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'Worker'}}"/>
  
  <view class="page-bd">
    <view class="canvas-wrap">
      <canvas canvas-id="canvas" class="canvas-wrap__bd"></canvas>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">计算斐波那契数</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="number" value="{{input}}" bindinput="bindInput" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">结果</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell">
          <view class="qui-cell__bd">
            <view class="qui-cell__txt">{{res}}</view>
          </view>
        </view>
      </view>
      <view class="qui-cell-group__ft">
        <text class="qui-cell__txt-tips">提示：使用单线程进行计算时，动画会出现明显的卡顿现象。使用Worker线程进行计算，则可以保证动画的流畅。</text>
      </view>
    </view>

    <view class="btn-area">
      <button bindtap="compute">单线程计算</button>
      <button type="primary" bindtap="multiThreadCompute">利用 Worker 线程计算</button>
    </view>

  </view>

  <template is="foot" />
</view>
