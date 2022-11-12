
import {ListItemComponentStyle,FontSize,CommonStyle} from '../common/constants/Constants'

@Component
export struct ListItemComponent{
  index: number;
  private name:Resource;
  @State isChange:boolean = false;
  @Prop vote:string;
  @Prop isSwitchDataSource:boolean;

  build(){
//    水平布局
    Row(){
//      排行
      Column(){
        if(this.isRenderCircleText()){
//          如果是前三个，则将文字改变颜色并增加圆形背景
          this.CircleText();
        }else{
//          非前三，则是普通文字
          this.NormalText()
        }
      }
      .width(ListItemComponentStyle.TEXT_RIGHT_WEIGHT)
      .alignItems(HorizontalAlign.Start)

//      种类
      Text(this.name)
        .width(ListItemComponentStyle.TEXT_CENTER_WEIGHT)
        .fontWeight(FontWeight.Bolder)
        .fontSize(FontSize.MIDDLE)
        .fontColor(this.isChange ? ListItemComponentStyle.COLOR_BLUE : ListItemComponentStyle.COLOR_BLACK)
//      得票数
      Text(this.vote)
        .width(ListItemComponentStyle.TEXT_RIGHT_WEIGHT)
        .fontWeight(FontWeight.Bolder)
        .fontSize(FontSize.MIDDLE)
        .fontColor(this.isChange ? ListItemComponentStyle.COLOR_BLUE : ListItemComponentStyle.COLOR_BLACK)
    }
    .width(CommonStyle.WIDTH_ALL)
    .height(ListItemComponentStyle.COMPONENT_HEIGHT)
    .onClick(() => {
      //点击，改变颜色
      this.isChange = !this.isChange;
      //
      this.isSwitchDataSource = !this.isSwitchDataSource;
    })
  }

  /**
   * 判断是否为前三个
   */
  isRenderCircleText(): boolean {
    return this.index === 1 || this.index === 2 || this.index === 3;
  }

  /**
   * 排行-前三个的容器样式
   */
  @Builder CircleText(){
    Row(){
      Text(this.index.toString())
        .fontSize(FontSize.SMALL)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)
    }
    .size(
      {
        width:ListItemComponentStyle.CIRCLE_RANKING_SIZE,
        height:ListItemComponentStyle.CIRCLE_RANKING_SIZE
      }
    )
    .backgroundColor($r('app.color.circle_text_background'))
    .borderRadius(ListItemComponentStyle.CIRCLE_RANKING_BORDER_RADIUS)
    .justifyContent(FlexAlign.Center)
  }

  /**
   * 排行-非前三个的容器样式
   */
  @Builder NormalText(){
    Text(this.index.toString())
      .width(ListItemComponentStyle.TEXT_RANKING_SIZE)
      .lineHeight(ListItemComponentStyle.TEXT_RANKING_SIZE)
      .fontWeight(FontWeight.Bold)
      .fontSize(FontSize.SMALL)
      .textAlign(TextAlign.Center)
  }
}