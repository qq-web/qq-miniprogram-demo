Component({
  properties: {
    logo: {
      type: String,
      value: ''
    },
    list: {
      type: Array,
      value: []
    }
  },
  data: {},
  lifetimes: {},
  methods: {
    navigateTo(e) {
      qq.navigateTo({
        url: e.currentTarget.dataset.url
      })
    }
  }
})
