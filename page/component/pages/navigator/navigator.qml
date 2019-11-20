<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container">
  <template is="head" data="{{title: 'navigator'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <navigator url="navigate?title=navigate" hover-class="navigator-hover">
        <button>跳转到新页面</button>
      </navigator>
      <navigator url="redirect?title=redirect" redirect hover-class="other-navigator-hover">
        <button>在当前页打开</button>
      </navigator>
      <navigator target="miniProgram" open-type="navigate" app-id="1108291530" version="release">
         <button>打开小程序</button>
        </navigator>
    </view>
  </view>

  <template is="foot" />
</view>
