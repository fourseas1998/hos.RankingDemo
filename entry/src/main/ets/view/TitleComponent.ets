
@Component
export struct TitleComponent{
  @Link isRefreshData:boolean;
  @State title: Resource = $r('app.string.title_default');

  build(){

  }
}