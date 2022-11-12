import {TitleComponent} from '../view/TitleComponent';
import {ListHeaderComponent} from '../view/ListHeaderComponent';
import {ListItemComponent} from '../view/ListItemComponent'
import {RankPageStyle,CommonStyle,APP_EXIT_INTERVAL,TIME} from '../common/constants/Constants'
import {RankData} from '../common/bean/RankData'
import { RankViewModel } from '../viewmodel/RankViewModel';
import prompt from '@ohos.prompt';

let rankModel: RankViewModel = new RankViewModel();

@Entry
@Component
struct RankPage{
  @State dataSource1: RankData[] = [];
  @State dataSource2: RankData[] = [];
  @State isSwitchDataSource: boolean = true;
  private clickBackTimeRecord:number=0;

  /**
   * 加载初始化数据
   */
  aboutToAppear(){
    this.dataSource1 = rankModel.loadRankDataSource1();
    this.dataSource2 = rankModel.loadRankDataSource2();
  }

  /**
   * 退出时调用
   */
  onBackPress(){
    if(this.isShowToast()){
      prompt.showToast(
        {
          message: '再按一次退出程序',duration: TIME
        }
      );
      this.clickBackTimeRecord = new Date().getTime();
      return true;
    }
    return false;
  }

  isShowToast(): boolean{
    return new Date().getTime() - this.clickBackTimeRecord > APP_EXIT_INTERVAL;
  }

  build(){
//    垂直布局
    Column(){
//      标题栏组件
      TitleComponent({isRefreshData: $isSwitchDataSource});
//      表头组件
      ListHeaderComponent();
//      列表组件
      this.RankList();
    }
    .width(CommonStyle.WIDTH_ALL)
    .height(CommonStyle.HEIGHT_ALL)
    .backgroundColor($r('app.color.background'))
  }

  @Builder RankList(){
    Column(){
      List(){
        ForEach(
          this.isSwitchDataSource ? this.dataSource1 : this.dataSource2,
          (item, index) => {
            ListItem(){
              ListItemComponent({
                index:index+1,
                name:item.name,
                vote:item.vote,
                isSwitchDataSource:this.isSwitchDataSource
              })
            }
          },
          (item, index) => item.id
        )
      }
      .width(CommonStyle.WIDTH_ALL)
      .height(CommonStyle.HEIGHT_ALL)
      .divider(
        {
          strokeWidth:CommonStyle.STROKE_WIDTH
        }
      )
    }
    .width(RankPageStyle.CONTENT_WIDTH)
    .height(CommonStyle.HEIGHT_ALL)
    .padding(
      {
        left:RankPageStyle.RANK_PADDING,
        right:RankPageStyle.RANK_PADDING
      }
    )
    .backgroundColor(Color.White)
    .borderRadius(RankPageStyle.BORDER_RADIUS)
    .alignItems(HorizontalAlign.Center)
  }
}