/**
 * 公共常量枚举-字体大小
 */
export enum FontSize {
  SMALL = 14,
  MIDDLE = 16,
  LARGE = 20,
}

export enum CommonStyle {
  WIDTH_ALL = '100%',
  WIDTH_HALF = '50%',
  HEIGHT_ALL = '100%',
  HEIGHT_HALF = '50%',
  STROKE_WIDTH = 1,
}

export const APP_EXIT_INTERVAL: number = 4500;
export const TIME = 1000;

/**
 * 排行榜页面-样式
 */
export const RankPageStyle = {
  /**
   * 容器-宽度
   */
  CONTENT_WIDTH: '90%',
  /**
   * 内边距
   */
  RANK_PADDING: 15,
  /**
   * 圆角半径
   */
  BORDER_RADIUS: 20,
}

/**
 * 标题栏组件-样式
 */
export const TitleComponentStyle = {
  /**
   * 图片-返回按钮-大小
   */
  IMAGE_BACK_SIZE: 20,
  /**
   * 图片-返回按钮-外间距-右边
   */
  IMAGE_BACK_MARGIN_RIGHT: 10,
  /**
   * 图片-刷新按钮-大小
   */
  IMAGE_LOADING_SIZE: 22,
  /**
   * 组件-高度
   */
  COMPONENT_HEIGHT: 47,
  /**
   * 组件-内边距-水平方向
   */
  COMPONENT_PADDING_HORIZONTAL: 20,
  /**
   * 组件-外边距-上
   */
  COMPONENT_MARGIN_TOP: 10,
}
/**
 * 表头组件-样式
 */
export const ListHeaderComponentStyle={
  /**
   * 文字-排行-宽度占比
   */
  TEXT_LEFT_WEIGHT: '30%',
  /**
   * 文字-种类-宽度占比
   */
  TEXT_CENTER_WEIGHT: '50%',
  /**
   * 文字-得票数-宽度占比
   */
  TEXT_RIGHT_WEIGHT: '20%',
  /**
   * 组件-内边距-水平方向
   */
  COMPONENT_PADDING_HORIZONTAL: 20,
  /**
   * 组件-外边距-上
   */
  COMPONENT_MARGIN_TOP: 10,
}
/**
 * 列表组件-样式
 */
export const ListItemComponentStyle={
  /**
   * 文字-排行-宽度占比
   */
  TEXT_LEFT_WEIGHT: '30%',
  /**
   * 文字-种类-宽度占比
   */
  TEXT_CENTER_WEIGHT: '50%',
  /**
   * 文字-得票数-宽度占比
   */
  TEXT_RIGHT_WEIGHT: '20%',
  /**
   * 文字-排行-大小
   */
  TEXT_RANKING_SIZE: 24,
  /**
   * 圆形背景-排行-大小
   */
  CIRCLE_RANKING_SIZE: 24,
  /**
   * 圆形背景-排行-圆角半径
   */
  CIRCLE_RANKING_BORDER_RADIUS: 24,
  /**
   * 蓝色
   */
  COLOR_BLUE: $r('app.color.item_color'),
  /**
   * 黑色
   */
  COLOR_BLACK: $r('app.color.item_color_black'),
  /**
   * 组件-高度
   */
  COMPONENT_HEIGHT: 40,
}