<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'text'}}"/>

  <view class="page-bd">
    <view class="story-wrap">
      <view class="story-wrap__bd">
        <view class="story-wrap__list" scroll-y="true" scroll-top="{{scrollTop}}">
          <text class="story-wrap__txt">{{text}}</text>
        </view>
      </view>
      <view class="story-wrap__ft">
        <button disabled="{{!canAdd}}" bindtap="add">add line</button>
        <button disabled="{{!canRemove}}" bindtap="remove">remove line</button>
      </view>
    </view>
  </view>

  <template is="foot" />
</view>
