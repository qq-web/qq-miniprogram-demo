const util = require('../../../../util/util.js');

let playTimeInterval;
let recordTimeInterval;

Page({
  onShareAppMessage() {
    return {
      title: '录音',
      path: 'page/API/pages/voice/voice',
    };
  },

  data: {
    recording: false,
    playing: false,
    hasRecord: false,
    recordTime: 0,
    playTime: 0,
    formatedRecordTime: '00:00:00',
    formatedPlayTime: '00:00:00',
  },

  onHide() {
    if (this.data.playing) {
      this.stopVoice();
    } else if (this.data.recording) {
      this.stopRecordUnexpectedly();
    }
  },

  startRecord() {
    this.setData({ recording: true });

    const that = this;
    recordTimeInterval = setInterval(() => {
      that.data.recordTime += 1;
      const { recordTime } = that.data;
      that.setData({
        formatedRecordTime: util.formatTime(that.data.recordTime),
        recordTime,
      });
    }, 1000);

    qq.startRecord({
      success(res) {
        that.setData({
          hasRecord: true,
          tempFilePath: res.tempFilePath,
          formatedPlayTime: util.formatTime(that.data.playTime),
        });
      },
      complete() {
        that.setData({ recording: false });
        clearInterval(recordTimeInterval);
      },
    });
  },

  stopRecord() {
    qq.stopRecord();
  },

  stopRecordUnexpectedly() {
    const that = this;
    qq.stopRecord({
      success() {
        console.log('stop record success');
        clearInterval(recordTimeInterval);
        that.setData({
          recording: false,
          hasRecord: false,
          recordTime: 0,
          formatedRecordTime: util.formatTime(0),
        });
      },
    });
  },

  playVoice() {
    const that = this;
    playTimeInterval = setInterval(() => {
      const playTime = that.data.playTime + 1;
      console.log('update playTime', playTime);
      that.setData({
        playing: true,
        formatedPlayTime: util.formatTime(playTime),
        playTime,
      });
    }, 1000);
    qq.playVoice({
      filePath: this.data.tempFilePath,
      success() {
        clearInterval(playTimeInterval);
        const playTime = 0;
        console.log('play voice finished');
        that.setData({
          playing: false,
          formatedPlayTime: util.formatTime(playTime),
          playTime,
        });
      },
    });
  },

  pauseVoice() {
    clearInterval(playTimeInterval);
    qq.pauseVoice();
    this.setData({
      playing: false,
    });
  },

  stopVoice() {
    clearInterval(playTimeInterval);
    this.setData({
      playing: false,
      formatedPlayTime: util.formatTime(0),
      playTime: 0,
    });
    qq.stopVoice();
  },

  clear() {
    clearInterval(playTimeInterval);
    qq.stopVoice();
    this.setData({
      playing: false,
      hasRecord: false,
      tempFilePath: '',
      formatedRecordTime: util.formatTime(0),
      recordTime: 0,
      playTime: 0,
    });
  },
});
