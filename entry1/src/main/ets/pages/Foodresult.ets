import { router } from '@kit.ArkUI'

@Entry
@Component

struct Foodresult {
  private foodImage: Array<ResourceStr> = [
    $rawfile('0.jpg'),
    $rawfile('1.jpg'),
    $rawfile('2.jpg'),
    $rawfile('3.jpg'),
    $rawfile('4.jpg'),
    $rawfile('5.jpg'),
    $rawfile('6.jpg'),
    $rawfile('7.jpg'),
    $rawfile('8.jpg'),
    $rawfile('9.jpg'),
    $rawfile('10.jpg'),
    $rawfile('11.jpg')
  ];

  foodImageIcon(food: number): ResourceStr {
    let icon: ResourceStr | undefined = undefined;
    switch (food) {
      case 0:
        icon = this.foodImage[0];
        break;
      case 1:
        icon = this.foodImage[1];
        break;
      case 2:
        icon = this.foodImage[2];
        break;
      case 3:
        icon = this.foodImage[3];
        break;
      case 4:
        icon = this.foodImage[4];
        break;
      case 5:
        icon = this.foodImage[5];
        break;
      case 6:
        icon = this.foodImage[6];
        break;
      case 7:
        icon = this.foodImage[7];
        break;
      case 8:
        icon = this.foodImage[8];
        break;
      case 9:
        icon = this.foodImage[9];
        break;
      case 10:
        icon = this.foodImage[10];
        break;
      case 11:
        icon = this.foodImage[11];
        break;
    }
    return icon!
  }

  @State i: number = Math.floor(Math.random() * 12);

  build() {
    Column() {
      Row() {
        Text('抽签结果')
          .fontSize(30)
          .padding({left:120})
      }
      .width('100%')
      .height(60)
      .backgroundColor('#f08080')

      Image(this.foodImageIcon(this.i))
        .width(500)
        .height(600)
        .objectFit(ImageFit.Contain)
        .margin(15)

      Row() {
        Button('确定')
          .padding({ left: 60, right: 60 })
          .fontColor(Color.Black)
          .backgroundColor('#f08080')
          .onClick(() => {
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
