import {rankData1,rankData2} from '../model/DataModel'

export class RankViewModel{
  loadRankDataSource1(): any[]{
    return rankData1;
  }
  loadRankDataSource2(): any[]{
    return rankData2;
  }
}