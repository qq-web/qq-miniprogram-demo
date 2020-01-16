const { fib } = require('../../../../util/util.js');

Page({
  onShareAppMessage() {
    return {
      title: '多线程Worker',
      path: 'page/API/pages/worker/worker',
    };
  },

  data: {
    res: '',
    input: 35,
  },

  onLoad() {
    this.worker = qq.createWorker('workers/fib/index.js');
  },

  onUnload() {
    clearInterval(this.interval);
    if (this.worker) this.worker.terminate();
  },

  bindInput(e) {
    const val = Number(e.detail.value);
    if (val > 40) return { value: 40 };
    if (Number.isNaN(val)) return { value: 33 };
    this.setData({
      input: val,
    });
    return undefined;
  },

  reset() {
    this.setData({ res: '' });
  },

  compute() {
    this.reset();
    qq.showLoading({
      title: '计算中...',
    });
    const t0 = +Date.now();
    const res = fib(this.data.input);
    const t1 = +Date.now();
    qq.hideLoading();
    this.setData({
      res,
      time: t1 - t0,
    });
  },

  multiThreadCompute() {
    this.reset();
    qq.showLoading({
      title: '计算中...',
    });

    const t0 = +Date.now();
    this.worker.postMessage({
      type: 'execFunc_fib',
      params: [this.data.input],
    });
    this.worker.onMessage((res) => {
      if (res.type === 'execFunc_fib') {
        qq.hideLoading();
        const t1 = +Date.now();
        this.setData({
          res: res.result,
          time: t1 - t0,
        });
      }
    });
  },

  onReady() {
    this.position = {
      x: 137.5,
      y: 137.5,
      vx: 2,
      vy: 2,
    };

    this.drawBall();
    this.interval = setInterval(this.drawBall, 17);
  },

  drawBall() {
    const p = this.position;
    p.x += p.vx;
    p.y += p.vy;
    if (p.x >= 275) {
      p.vx = -2;
    }
    if (p.x <= 7) {
      p.vx = 2;
    }
    if (p.y >= 275) {
      p.vy = -2;
    }
    if (p.y <= 7) {
      p.vy = 2;
    }

    const context = qq.createContext();

    function ball(x, y) {
      context.beginPath(0);
      context.arc(x, y, 5, 0, Math.PI * 2);
      context.setFillStyle('#00CAFC');
      context.setStrokeStyle('rgba(1,1,1,0)');
      context.fill();
      context.stroke();
    }

    ball(p.x, 137.5);
    ball(137.5, p.y);
    ball(275 - p.x, 137.5);
    ball(137.5, 275 - p.y);
    ball(p.x, p.y);
    ball(275 - p.x, 275 - p.y);
    ball(p.x, 275 - p.y);
    ball(275 - p.x, p.y);

    qq.drawCanvas({
      canvasId: 'canvas',
      actions: context.getActions(),
    });
  },

});
