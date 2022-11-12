import AppContext from '@ohos.application.context';
import {TitleComponentStyle,FontSize,CommonStyle} from '../common/constants/Constants';

@Component
export struct TitleComponent {
  @Link isRefreshData: boolean;
  @State title: Resource = $r('app.string.TitleComponent_Title');

  build() {
    //水平布局
    Row(){
//      左边容器
      Row(){
//        返回按钮图片
        Image($r('app.media.ic_public_back'))
          .width(TitleComponentStyle.IMAGE_BACK_SIZE)
          .height(TitleComponentStyle.IMAGE_BACK_SIZE)
          .margin({right:TitleComponentStyle.IMAGE_BACK_MARGIN_RIGHT})
          .onClick(() => {
//            获取当前的Ability
            let handler = getContext(this) as AppContext.AbilityContext;
//            结束Ability
            handler.terminateSelf();
          })
//        文字标题
        Text(this.title)
          .fontSize(FontSize.LARGE)
      }
      .width(CommonStyle.WIDTH_HALF)
      .height(CommonStyle.HEIGHT_ALL)
      .justifyContent(FlexAlign.Start)

//      右边容器
      Row(){
//        刷新按钮
        Image($r('app.media.loading'))
          .width(TitleComponentStyle.IMAGE_LOADING_SIZE)
          .height(TitleComponentStyle.IMAGE_LOADING_SIZE)
          .onClick(()=>{
            this.isRefreshData = !this.isRefreshData;
          })
      }
      .width(CommonStyle.WIDTH_HALF)
      .height(CommonStyle.HEIGHT_ALL)
      .justifyContent(FlexAlign.End)
    }
    .width(CommonStyle.WIDTH_ALL)
    .height(TitleComponentStyle.COMPONENT_HEIGHT)
    .padding(
      {
        left:TitleComponentStyle.COMPONENT_PADDING_HORIZONTAL,
        right:TitleComponentStyle.COMPONENT_PADDING_HORIZONTAL
      }
    )
    .margin(
      {
        top:TitleComponentStyle.COMPONENT_MARGIN_TOP
      }
    )
    .justifyContent(FlexAlign.SpaceAround)

  }
}