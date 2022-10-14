const app = getApp();

Page({
  data: {
    comment: "",
    comments: [],
    isPrized: false,
    user: {}
  },
  // 页面加载
  onLoad: function (options) {
    var id = options.id;
    if (app.globalData.user.likedArticle.includes(parseInt(id))) {
      console.log("yes")
      this.setData({
        isPrized: true
      })
    }
    this.GerArticleById(id);
    this.GerArticleCommentsById(id);

    this.setData({
      id: id,
      user: app.globalData.user
    });
  },

  returnHome(){
    console.log("return")
    wx.switchTab({
      url: "/pages/index/index"
    })
  },

  GerArticleById(id) {
    wx.request({
      url: 'http://127.0.0.1:8080/detail',
      method: 'GET',
      data: {
        articleId: id
      },
      success: (res) => {
        console.log(res.data)
        this.setData({
          item: res.data
        })
      }
    })
  },

  GerArticleCommentsById(id) {
    wx.request({
      url: 'http://127.0.0.1:8080/getComments',
      method: 'GET',
      data: {
        articleId: id
      },
      success: (res) => {
        console.log(res.data)
        this.setData({
          comments: res.data
        })
      }
    })
  },

  inputFrame(e) {
    this.setData({
      comment: e.detail.value
    })
  },

  publishComment: function () {
    if (this.data.comment === '') {
      wx.showToast({
        title: '输入为空！',
        icon: 'error'
      })
    } else {
      wx.request({
      url: 'http://127.0.0.1:8080/addComment',
      method: 'GET',
      data: {
        articleId: this.data.item.id,
        comment: this.data.comment,
        userId: app.globalData.user.id
      },
      success: (res) => {
        console.log(res.data)
        this.setData({
          comment: "",
          comments: res.data
        })
      }
    })
    }
  },

  prizeAction: function () {
    wx.request({
      url: 'http://127.0.0.1:8080/like',
      method: 'GET',
      data: {
        articleId: this.data.item.id,
        userId: app.globalData.user.id
      },
      success: (res) => {
        console.log(res.data)
        console.log(app.globalData.user.likedArticle)
        if (this.data.isPrized) {
          app.globalData.user.likedArticle.splice(app.globalData.user.likedArticle.indexOf(this.data.item.id), 1)
        } else {
          app.globalData.user.likedArticle.unshift(this.data.item.id)
        }
        console.log(app.globalData.user.likedArticle)
        this.setData({
          "item.likes": this.data.item.likes + (this.data.isPrized ? -1 : 1),
          "isPrized": !this.data.isPrized,
        })
      }
    })
  }
});