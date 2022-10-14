const app = getApp();

Component({
  /**
   * 组件的一些选项
   */
  options: {
    addGlobalClass: true,
    multipleSlots: true
  },
  data: {
    isPrized: false
  },
  properties: {
    item: {
      type: Object
    }
  },
  /**
   * 组件的初始数据
   */
  data: {
    isPrized: false,
  },
  /**
   * 组件的方法列表
   */
  methods: {
    prizeAction: function () {
      wx.request({
        url: 'http://127.0.0.1:8080/like',
        method: 'GET',
        data: {
          articleId: this.properties.item.id,
          userId: app.globalData.user.id
        },
        success: (res) => {
          console.log(res.data)
          console.log(app.globalData.user.likedArticle)
          if (this.data.isPrized) {
            app.globalData.user.likedArticle.splice(app.globalData.user.likedArticle.indexOf(this.properties.item.id), 1)
          } else {
            app.globalData.user.likedArticle.unshift(this.properties.item.id)
          }
          console.log(app.globalData.user.likedArticle)
          this.setData({
            "item.likes": this.properties.item.likes + (this.data.isPrized ? -1 : 1),
            "isPrized": !this.data.isPrized,
          })
        }
      })
    },
    toDetials(e) {
      var id = e.currentTarget.dataset.id;
      var url = '/pages/detials/detials' + "?id=" + id
      console.log(url);
      wx.navigateTo({
        url: url
      })
    }
  },
  lifetimes: {
    attached() {
      if (app.globalData.user.likedArticle.includes(parseInt(this.properties.item.id))) {
        this.setData({
          isPrized: true
        })
      } else {
        this.setData({
          isPrized: false
        })
      }
    }
  },
  pageLifetimes: {
    show() {
      if (app.globalData.user.likedArticle.includes(parseInt(this.properties.item.id))) {
        this.setData({
          isPrized: true
        })
      } else {
        this.setData({
          isPrized: false
        })
      }
    }
  }
})