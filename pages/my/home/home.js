const app = getApp();
Page({
  data: {
    starCount: 0,
    forksCount: 0,
    visitTotal: 0,
  },
  coutNum(e) {
    if (e > 1000 && e < 10000) {
      e = (e / 1000).toFixed(1) + 'k'
    }
    if (e > 10000) {
      e = (e / 10000).toFixed(1) + 'W'
    }
    return e
  },
  showModal(e) {
    this.setData({
      isShowModal: true
    })
  },
  hideModal(e) {
    this.setData({
      isShowModal: false
    })
  },
  
  onShow: function (options) {
    console.log("success")
    let that = this;
    wx.showLoading({
      title: '数据加载中',
      mask: true,
    })
    let i = 0;
    numDH();
    function numDH() {
      if (i < 20) {
        setTimeout(function () {
          that.setData({
            starCount: i,
            forksCount: i,
            visitTotal: i
          })
          i++
          numDH();
        }, 20)
      } else {
        that.setData({
          starCount: that.coutNum(648),
          forksCount: that.coutNum(484),
          visitTotal: that.coutNum(851)
        })
      }
    }
    wx.hideLoading()
  }
})