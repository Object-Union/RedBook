/**
 * 瀑布流组件
 */
Component({
  properties: {
    intervalWidth: {
      type: String,
      value: "20rpx"
    },
    items: {
      type: Array,
    }
  },
  data: {
    // items: [],
    stopMasonry: false
  },
  methods: {
    /**
     * 批量添加元素
     * 
     * @param {Array} items - 新增的元素数组 
     */
    append(items) {
      console.log("append==>")
      console.log(items)
      if (Object.prototype.toString.call(items) !== '[object Array]') {
        console.error("[masonry]参数类型错误，渲染失败");
        return false;
      }

      this.setData({
        stopMasonry: false
      })

      return this._refresh(items);
    },

    /**
     * 刷新瀑布流
     * 
     * @param {Array} items - 参与渲染的元素数组 
     */
    start(items) {
      console.log("start")
      if (Object.prototype.toString.call(items) !== '[object Array]') {
        console.error("[masonry]参数类型错误，渲染失败");
        return false;
      }

      this.setData({
        items: [],
        stopMasonry: false
      })

      return this._refresh(items);
    },

    /**
     * 刷新瀑布流
     * 
     * @param {Array} items - 参与渲染的元素数组 
     */
    _refresh(items) {
      console.log("_refresh: " + items)
      const query = wx.createSelectorQuery().in(this)
      this.columnNodes = query.selectAll('#left-col-inner, #right-col-inner')

      return new Promise((resolve, reject) => {
        this._render(items, 0, () => {
          resolve()
        })
      })
    },

    /**
     * 渲染函数
     * 
     * @param {Array} items  - 正在渲染的数组
     * @param {Number} i  - 当前渲染元素的下标
     * @param {Function} onComplete - 完成后的回调函数
     */
    _render(items, i, onComplete) {
      if (items.length > i && !this.data.stopMasonry) {
        this.columnNodes.boundingClientRect().exec(arr => {
          const item = items[i]
          const rects = arr[0]
          const leftColHeight = rects[0].height
          const rightColHeight = rects[1].height

          this.setData({
            items: [...this.properties.items, {
              ...item,
              columnPosition: leftColHeight <= rightColHeight ? 'left' : 'right'
            }]
          }, () => {
            this._render(items, ++i, onComplete)
          })
        })
      } else {
        onComplete && onComplete()
      }
    }
  }
});