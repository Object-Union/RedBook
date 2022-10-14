const app = getApp();

import bData from '../../service/mock.js'
Page({
  data: {
    contentHeight: app.globalData.windowHeight,
    TabCur: null,
    themes: [],
    items: [],
    pigeSize: 6,
    pageNum: 1,
    AllPage: 0,
  },
  // 页面加载
  onLoad: function (options) {
    // this.GetArticles();
    this.GetAllPageNum();
    this.GetUserInfo();

    var i = bData.getData(this.data.pageNum);
    console.log(i.themes)

    this.setData({
      TabCur: i.themes[0].id,
      themes: i.themes,
    });

  },

  onShow() {
    this.setData({
      items: []
    })
    for (let i = 1; i <= this.data.pageNum; i++) {
      console.log(i)
      this.GetArticles(i);
    }
  },

  // 拉触底加载
  onReachBottom: function () {
    if (this.data.pageNum != this.data.AllPage) {
      console.log('没触底')
      var pageNo = this.data.pageNum + 1;
      this.GetArticles(pageNo);
      this.setData({
        pageNum: pageNo
      })
    } else {
      console.log('触底了')
    }
  },

  // tab选择事件
  tabSelect(e) {
    var id = e.currentTarget.dataset.id;
    // var data = bData.getData(1, id);
    this.setData({
      TabCur: id,
      // items: data.items,
      // pageNum: 1
    })

    //...
  },

  GetArticles(no) {
    wx.request({
      url: 'http://127.0.0.1:8080/home',
      method: 'GET',
      data: {
        pageNo: no
      },
      success: (res) => {
        var arr = this.data.items
        var len = arr.length
        for (let i = 0; i < res.data.length; i++) {
          if (i % 2 == 0) {
            res.data[i].columnPosition = (len % 2 === 0 ? 'left' : 'right')
          } else {
            res.data[i].columnPosition = (len % 2 === 0 ? 'right' : 'left')
          }
          arr.push(res.data[i])
        }
        console.log("arr==>")
        console.log(arr)
        this.setData({
          items: arr
        })
      }
    })
  },

  GetUserInfo() {
    wx.request({
      url: 'http://127.0.0.1:8080/getUser',
      method: 'GET',
      data: {
        userId: app.globalData.user.id
      },
      success: (res) => {
        app.globalData.user = res.data
      }
    })
  },

  GetAllPageNum() {
    wx.request({
      url: 'http://127.0.0.1:8080/GetArticlesPageCounts',
      method: 'GET',
      success: (res) => {
        this.setData({
          AllPage: res.data
        })
      }
    })
  }
})