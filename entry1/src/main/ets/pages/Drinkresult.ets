import { router } from '@kit.ArkUI'

@Entry
@Component

struct Drinkresult {
  private drinkImage: Array<ResourceStr> = [
    $rawfile('12.jpg'),
    $rawfile('13.jpg'),
    $rawfile('14.jpg'),
    $rawfile('15.jpg'),
    $rawfile('16.jpg'),
    $rawfile('17.jpg'),
    $rawfile('18.jpg'),
    $rawfile('19.jpg'),
    $rawfile('20.jpg'),
    $rawfile('21.jpg')
  ];

  drinkImageIcon(drink: number): ResourceStr {
    let icon: ResourceStr | undefined = undefined;
    switch (drink) {
      case 0:
        icon = this.drinkImage[0];
        break;
      case 1:
        icon = this.drinkImage[1];
        break;
      case 2:
        icon = this.drinkImage[2];
        break;
      case 3:
        icon = this.drinkImage[3];
        break;
      case 4:
        icon = this.drinkImage[4];
        break;
      case 5:
        icon = this.drinkImage[5];
        break;
      case 6:
        icon = this.drinkImage[6];
        break;
      case 7:
        icon = this.drinkImage[7];
        break;
      case 8:
        icon = this.drinkImage[8];
        break;
      case 9:
        icon = this.drinkImage[9];
        break;
    }
    return icon!
  }

  @State i: number = Math.floor(Math.random() * 10);
  build() {
    Column() {
      Row() {
        Text('抽签结果')
          .fontSize(30)
          .padding({left:120})
      }
      .width('100%')
      .height(60)
      .backgroundColor('#87cefa')

      // Image()
      Image(this.drinkImageIcon(this.i))
        .width(500)
        .height(600)
        .objectFit(ImageFit.Contain)
        .margin(15)

      Row(){
        Button('确定')
          .padding({left:60, right:60})
          .fontColor(Color.Black)
          .backgroundColor('#87cefa')
          .onClick(()=>{
            router.back()
          })
      }
      .width('100%')
      .height(100)
      .justifyContent(FlexAlign.SpaceAround)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}


