<view class="index">
  <view class="index-hd">
    <image class="index-logo" src="../../image/index/logo-component.svg" mode="aspectFill"></image>
    <view class="index-desc">以下将展示小程序组件能力，具体属性参数详见<navigator url="pages/web-view/web-view" class="index-navigator">QQ小程序开发文档</navigator></view>
  </view>
  <view class="index-bd">

    <view class="list-wrap">
      <block qq:for-items="{{list}}" qq:key="{{item.id}}">
        <view class="list-wrap__group {{item.open ? 'list-wrap__group_expand' : 'list-wrap__group_collapse'}}">
          <view id="{{item.id}}" class="list-wrap__group-hd" bindtap="kindToggle">
            <text class="list-wrap__group-title">{{item.name}}</text>
            <image class="list-wrap__group-icon" src="../../image/index/{{item.id}}.svg"  mode="aspectFill" />
          </view>
          <view class="list-wrap__group-bd">
            <block qq:for-items="{{item.pages}}" qq:for-item="page" qq:key="*item">
              <navigator url="pages/{{page.path}}/{{page.path}}" class="list-wrap__item">
                <view class="list-wrap__item-bd">
                  <text class="list-wrap__txt-title">{{page.name}}</text>
                  <image class="list-wrap__group-icon-more" src="../../image/common/icon-arrow-right@2x.svg"  mode="aspectFill" />
                </view>
                <view class="list-wrap__item-ft"></view>
              </navigator>
            </block>
          </view>
        </view>
      </block>
    </view>
    
  </view>
</view>