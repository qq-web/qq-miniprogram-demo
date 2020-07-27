<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: '场景化入口'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <button bindtap="saveAppToDesktop">添加到桌面</button>
      <button open-type="addColorSign">添加到彩签</button>
      <button open-type="addGroupApp" bindaddgroupapp="onAddGroupApp">{{entryDataHash?'添加到本群':'设为群应用'}}</button>
      <view class="list-wrap__group-tips">
        <text class="list-wrap__group-txt-tips">{{ entryDataHash?'':'从自己管理的QQ群里打开小程序即可『添加到本群』'}}
        </text>
      </view>
    </view>

  </view>

  <template is="foot"/>
</view>
