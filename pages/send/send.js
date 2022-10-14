const app = getApp()
Page({

  data: {
    cloudImgList:[],
    inputValue:'',
    titleValue:'',
    tishi:'请输入正文内容',
    addresssInfo:{}
  },
 
  //选择类型
  bindPickerChange(e) {
    console.log(e)
    this.setData({
      chooseTypeName: this.data.typesList[e.detail.value].name,
      typeId:this.data.typesList[e.detail.value]._id
    })

  },
  getTypes(){
    wx.cloud.database().collection('types')
    .get()
    .then(res=>{
      console.log(res)
      
      let array = []
      for(let l in res.data){
        array.push(res.data[l].name)
      }
      this.setData({
        typesList:res.data,
        typeNameList:array
      })
    })
  },
  chooseVideo(e){
    var that = this;
    wx.chooseVideo({
      sourceType: ['album','camera'],
      maxDuration: 60,
      compressed: false,
      camera: 'back',
      success(res) {
        console.log(res)
        console.log(res.tempFilePath.match(/\.(\w+)$/)[1])
        wx.showLoading({
          title: '上传中',
        })
        wx.cloud.uploadFile({
          cloudPath:`actionVideos/${Math.random()}_${Date.now()}.${res.tempFilePath.match(/\.(\w+)$/)[1]}`,
          filePath: res.tempFilePath,
          success(suc){
            console.log(suc.fileID)
            that.setData({
              videoUrl:suc.fileID
            })
            wx.hideLoading({})
          }
        })
      }
    })
  },

  onLoad: function (options) {

    console.log(app.globalData.userInfo)

  },
  getValue(e){
    console.log(e.detail.value)
    this.setData({
      inputValue: e.detail.value
    })
  },
  chooseImage(){
    var that = this;
    wx.chooseImage({
      count: 9 - that.data.cloudImgList.length,
      sizeType: ['original','compressed'],
      sourceType: ['album','camera'],
      success(res){

        console.log(res)
        console.log(res.tempFilePaths)
        //上传图片
        that.data.tempImgList = res.tempFilePaths
        that.uploadImages()
      }
    })

  },
  uploadImages(){
    var that = this;
    for(var i = 0 ; i< this.data.tempImgList.length; i++){
      wx.cloud.uploadFile({
        cloudPath:`actionImages/${Math.random()}_${Date.now()}.${this.data.tempImgList[i].match(/\.(\w+)$/)[1]}`,
        filePath: this.data.tempImgList[i],
        success(res){
          console.log(res.fileID)
          that.data.cloudImgList.push(res.fileID)
          that.setData({
            cloudImgList:that.data.cloudImgList
          })
        }
      })
    }

  },
  deleteImg(e){
    console.log(e.currentTarget.dataset.index)
    this.data.cloudImgList.splice(e.currentTarget.dataset.index,1)
    this.setData({
      cloudImgList: this.data.cloudImgList
    })
  },

  submitData(){
    var that = this;
    if(!this.data.title){
        wx.showToast({
            icon:'error',
            title: '标题为空',
        })
        return
    }
    if(!this.data.videoUrl && this.data.cloudImgList.length==0){
        wx.showToast({
            icon:'error',
            title: '图片为空',
        })
        return
    }
    wx.showLoading({
      title: '发布中',
      mask:'true'
    })
    wx.cloud.database().collection('school_loves').add({
      data: {
        nickName: app.globalData.userInfo.nickName,
        faceImg: app.globalData.userInfo.avatarUrl,
        text: this.data.inputValue,
        images: this.data.cloudImgList,
        school:app.globalData.userInfo.school,
        time: Date.now(),
        prizeList: [],
        commentList: [],
        latitude: this.data.addresssInfo.latitude,
        longitude: this.data.addresssInfo.longitude,
        address: this.data.addresssInfo.address + this.data.addresssInfo.name,
        video: this.data.videoUrl,
        typeId:this.data.typeId,
        browseCount:0,
        title:this.data.title
      },
      success(res){
        console.log(res)
        wx.showToast({
          title: '发布成功！',
        })
        that.setData({
            titleValue:'',
          inputValue:'',
          chooseTypeName:'',
          localtion:'',
          typeId:'',
          videoUrl:'',
          cloudImgList:[]
        })
      }

    })
  },

  getTitleValue(event){

    console.log(event.detail.value)
    this.setData({
        title:event.detail.value
    })
    
    

  }
  
  


})