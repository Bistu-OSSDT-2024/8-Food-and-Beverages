import { router } from '@kit.ArkUI'

@Entry
@Component

struct Index {
  build() {
    Column(){
      Row(){
        Text('欢迎来到Food and Beverages')
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
      }
      .backgroundColor("#f0f0f0")
      .width('100%')
      .height(100)
      .padding({left:30})
      .border({width:1})

      Button("food")
        .fontSize(50)
        .margin({top:100})
        .width(200)
        .height(100)
        .border({width:1})
        .onClick(()=>{
          router.pushUrl({url:"pages/Foodresult"})
        })

      Button("drink")
        .fontSize(50)
        .margin({top:100})
        .width(200)
        .height(100)
        .border({width:1})
        .onClick(()=>{
          router.pushUrl({url:"pages/Drinkresult"})
        })
    }
    .backgroundColor(Color.White)
    .width('100%')
    .height('100%')
  }
}

