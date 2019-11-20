<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'showShareMenu'}}"/>

  <view class="page-bd">
    <text class="qui-cell__txt-tips">点击右上角菜单转发给好友</text>
    <view class="btn-area">
      <button bindtap="showFriendShareMenu">右上角只显示分享到好友</button>
      <button bindtap="showQzoneShareMenu">右上角只显示分享到空间</button>
      <button bindtap="showBothShareMenu">右上角显示分享到好友和空间</button>
      <button open-type="share" share-type="{{3}}">弹出分享到好友和空间</button>
      <button open-type="share" share-type="{{1}}">弹出分享到好友</button>
      <button open-type="share" share-type="{{2}}">弹出分享到空间</button>
    </view>

  </view>

  <template is="foot"/>
</view>
