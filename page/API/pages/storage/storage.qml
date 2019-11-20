<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage">
  <template is="head" data="{{title: 'get/set/clearStorage'}}"/>

  <view class="page-bd">
    <view class="qui-cell-group">
      <view class="qui-cell-group__bd">
        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">key</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" placeholder="请输入key" name="key" value="{{key}}" bindinput="keyChange" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>

        <view class="qui-cell qui-cell_input">
          <view class="qui-cell__hd">
            <text class="qui-cell__txt-label">value</text>
          </view>
          <view class="qui-cell__bd">
            <view class="qui-input">
              <input class="qui-input__txt-input" type="text" placeholder="请输入value" name="data" value="{{data}}" bindinput="dataChange" placeholder-class="qui-input__txt-placeholder" />
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="btn-area">
      <button type="primary" bindtap="setStorage">存储数据</button>
      <button bindtap="getStorage">读取数据</button>
      <button bindtap="clearStorage">清理数据</button>
    </view>

  </view>

  <modal title="{{dialog.title}}" hidden="{{dialog.hidden}}" no-cancel bindconfirm="confirm">{{dialog.content}}</modal>

  <template is="foot" />
</view>
