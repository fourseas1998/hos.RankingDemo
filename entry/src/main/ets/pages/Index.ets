import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State btn:string = '跳转下一页'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button(this.btn, { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(200)
          .onClick(()=>{
            router.push({
              url:'pages/RankPage'
            }
            )
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}