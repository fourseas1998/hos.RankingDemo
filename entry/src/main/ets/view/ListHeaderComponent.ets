
import {ListHeaderComponentStyle,FontSize,CommonStyle} from '../common/constants/Constants'

@Component
export struct ListHeaderComponent{

  build(){
//    水平布局
    Row(){
//      文字-排行
      Text($r('app.string.ListHeaderComponent_Ranking'))
        .width(ListHeaderComponentStyle.TEXT_LEFT_WEIGHT)
        .fontSize(FontSize.SMALL)
        .fontWeight(FontWeight.Bolder)
        .fontColor($r('app.color.font_description'))
//      文字-种类
      Text($r('app.string.ListHeaderComponent_Kind'))
        .width(ListHeaderComponentStyle.TEXT_CENTER_WEIGHT)
        .fontSize(FontSize.SMALL)
        .fontWeight(FontWeight.Bolder)
        .fontColor($r('app.color.font_description'))
//      文字-票数
      Text($r('app.string.ListHeaderComponent_Ranking'))
        .width(ListHeaderComponentStyle.TEXT_RIGHT_WEIGHT)
        .fontSize(FontSize.SMALL)
        .fontWeight(FontWeight.Bolder)
        .fontColor($r('app.color.font_description'))
    }
    .width(CommonStyle.WIDTH_ALL)
    .padding(
      {
        left:ListHeaderComponentStyle.COMPONENT_PADDING_HORIZONTAL
      }
    )
    .margin(
      {
        top:ListHeaderComponentStyle.COMPONENT_MARGIN_TOP
      }
    )
  }
}