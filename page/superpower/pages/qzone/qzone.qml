<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: '分享强化'}}"/>

  <view class="page-bd">
    <text class="qui-cell__txt-tips">点击右上角菜单转发给好友</text>
    <view class="btn-area">
      <button bindtap="showFriendShareMenu">右上角只显示分享到好友</button>
      <button bindtap="showQzoneShareMenu">右上角只显示分享到空间</button>
      <button bindtap="showBothShareMenu">右上角显示分享到好友和空间</button>
      <button open-type="share" id="share3" share-type="{{3}}">弹出分享到好友和空间</button>
      <button open-type="share" id="share1" share-type="{{1}}">弹出分享到好友</button>
      <button open-type="share" id="share2" share-type="{{2}}">弹出分享到空间</button>
      <button open-type="share" id="share32" share-type="{{32}}">快速分享面板</button>
      <button open-type="share" id="share4" share-type="{{4}}" disabled="{{!entryDataHash}}">一键分享回原会话</button>
      <view class="list-wrap__group-tips">
        <text class="list-wrap__group-txt-tips">分享页面到群会话，从群会话中打开小程序即可『分享回原会话』</text>
      </view>
      <navigator url="/page/superpower/pages/open-qzone-publish/open-qzone-publish">
        <button >空间说说发表（publish扶持计划）</button>
      </navigator>
    </view>

  </view>

  <template is="foot"/>
</view>
