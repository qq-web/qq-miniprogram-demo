<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'rich-text'}}"/>

  <view class="page-bd">

    <view class="code-wrap">
      <view class="code-wrap__hd">
        <text class="code-wrap__txt-title">通过 HTML String 渲染</text>
      </view>
      <view class="code-wrap__bd">
        <scroll-view scroll-y>{{htmlSnip}}</scroll-view>

        <button type="primary" bindtap="renderHtml">渲染 HTML</button>

        <view class="code-wrap__txt-result" qq:if="{{renderedByHtml}}">
          <rich-text  nodes="{{htmlSnip}}"></rich-text>
        </view>   
      </view>
    </view>

    <view class="code-wrap">
      <view class="code-wrap__hd">
        <text class="code-wrap__txt-title">通过节点渲染</text>
      </view>
      <view class="code-wrap__bd">
        <scroll-view scroll-y>{{nodeSnip}}</scroll-view>

        <button type="primary" bindtap="renderNode">渲染Node</button>

        <view class="code-wrap__txt-result" qq:if="{{renderedByNode}}">
          <rich-text nodes="{{nodes}}"></rich-text>
        </view>   
      </view>
    </view>

  </view>

  <template is="foot" />
</view>
