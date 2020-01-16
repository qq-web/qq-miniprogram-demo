<import src="../../../common/head.wxml"/>
<import src="../../../common/foot.wxml"/>

<view class="container">
  <template is="head" data="{{title: '模版消息'}}"/>

  <view class="page-bd">
    <view class="btn-area">
      <form bindsubmit="formSubmit" report-submit="true">
        <button type="primary" form-type="submit">获取formid</button>
      </form>
      <button type="primary" bindtap="sendMessage">发送模板消息</button>
      <view class="page-tips">获取1次formid，即可发送1条消息</view>
    </view>
  </view>

  <template is="foot"/>
</view>
