<import src="../../../common/head.qml"/>
<import src="../../../common/foot.qml"/>

<view class="container grayPage">
  <template is="head" data="{{title: 'generalWebpageUrl'}}"/>
  
  <view class="page-bd">
    <view class="qui-cell-group">
      <view class="qui-cell-group__hd">
        <text class="qui-cell-group__txt-title">发送内容（以下字段可自由适配）</text>
      </view>
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">标题</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" name="title" placeholder="自定义转发标题" placeholder-class="qui-input__txt-placeholder" disabled="{{true}}" value="{{shareData.title}}"></input>
            </view>
          </view>
        </view>
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">描述</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" name="title" placeholder="自定义转发描述" placeholder-class="qui-input__txt-placeholder" disabled="{{true}}" value="{{shareData.desc}}"></input>
            </view>
          </view>
        </view>
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">跳转页面</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" name="title" placeholder="" placeholder-class="qui-input__txt-placeholder" disabled="{{true}}" value="{{shareData.path}}"></input>
            </view>
          </view>
        </view>
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">PC端QQ接收内容</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" name="title" placeholder="" placeholder-class="qui-input__txt-placeholder" disabled="{{true}}" value="{{shareData.generalWebpageUrl}}"></input>
            </view>
          </view>
        </view>
      </view>
      <view class="qui-cell-group__ft">
        <text class="qui-cell__txt-tips">点击右上角菜单转发给好友</text>
      </view>
    </view>
  </view>

  <template is="foot"/>
</view>
