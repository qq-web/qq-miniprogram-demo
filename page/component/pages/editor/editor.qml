<import src="../../../common/head.qml" />
<import src="../../../common/foot.qml" />

<view class="container grayPage editor-container">
  <i class="iconfont icon-zitijiacu {{formats.bold ? 'ql-active' : ''}}" data-name="bold"></i>
  <i class="iconfont icon-zitixieti {{formats.italic ? 'ql-active' : ''}}" data-name="italic"></i>
  <i class="iconfont icon-zitixiahuaxian {{formats.underline ? 'ql-active' : ''}}" data-name="underline"></i>
  <editor placeholder="富文本编辑器"></editor>
  <template is="foot" />
</view>
