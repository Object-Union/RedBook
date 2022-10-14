App({
  onLaunch: function () {
    if (wx.cloud) {
      wx.cloud.init({
        traceUser: true
      })
    }
    wx.getSystemInfo({
      success: e => {
        // 顶部状态
        this.globalData.StatusBar = e.statusBarHeight;
        // 胶囊按钮信息
        let custom = wx.getMenuButtonBoundingClientRect();
        // 自定义顶部
        this.globalData.Custom = custom;
        this.globalData.CustomBar = custom.bottom + custom.top - e.statusBarHeight;
        // 设备可视高宽
        this.globalData.windowHeight = e.windowHeight;
        this.globalData.windowWidth = e.windowWidth;
      }
    })
  },
  globalData: {
    user: {
      id: 1,
      name: "管理员",
      avatarUrl: "https://objectunion.vip/avatar/1.png"
    }
  }
})