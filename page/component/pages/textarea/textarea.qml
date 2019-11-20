<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'textarea'}}"/>

  <view class="page-bd">

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">输入区域高度自适应，不会出现滚动条</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="textarea-wrap">
          <textarea bindblur="bindTextAreaBlur" auto-height />
        </view>
      </view>
    </view>

    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">这是一个可以自动聚焦的textarea</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="textarea-wrap">
          <textarea auto-focus="true" style="height: 3em" />
        </view>
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
