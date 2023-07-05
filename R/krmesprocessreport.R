

#' Title 预览数据
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples viewmiddleTableserver()  
krmesprocessreportodsbillserver <- function(input,output,session,dms_token) {

    var_dr_krmesprocessreportodsbill =tsui::var_dateRange('dr_krmesprocessreportodsbill')

    shiny::observeEvent(input$btn_krmesprocessreportodsbill_view,
                        {
                          
                          dates = var_dr_krmesprocessreportodsbill()
                          start = as.character(dates[1])
                          end = as.character(dates[2])
                            sql = paste0("select * from rds_kr_mes_vw_processreport 
                                         where  FDate >='",start,"' and  FDate <='",end,"'")
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c(
                              '单据编号',
                              '单据类型',
                              '单据日期',
                              '单据状态',
                              '加工组织',
                              '加工车间',
                              '创建人',
                              '创建日期',
                              '修改人',
                              '修改日期',
                              '审核人',
                              '审核日期',
                              '作废人',
                              '作废日期',
                              '作废状态',
                              '生产订单编号',
                              '生产订单行号',
                              '工序序列',
                              '工序号',
                              '工序说明',
                              '订单生产组织',
                              '订单生产车间',
                              '合格数量',
                              '损耗数量',
                              '工废数量',
                              '料废数量',
                              '待返修数量',
                              '完工数量',
                              '工序单位',
                              '班次',
                              '班组',
                              '资源',
                              '设备',
                              '检验员',
                              '产品类型',
                              '产品编码',
                              'BOM版本',
                              '汇报类型',
                              '返修汇报标志',
                              '辅助属性',
                              '批号',
                              '确认工序状态',
                              '工序汇报备注',
                              '参考序列',
                              '参考工序',
                              '活动一',
                              '活动一数量',
                              '活动一计量单位',
                              '活动二',
                              '活动二数量',
                              '活动二计量单位',
                              '活动三',
                              '活动三数量',
                              '活动三计量单位',
                              '活动四',
                              '活动四数量',
                              '活动四计量单位',
                              '活动五',
                              '活动五数量',
                              '活动五计量单位',
                              '活动六',
                              '活动六数量',
                              '活动六计量单位',
                              '准备开始时间',
                              '准备完成时间',
                              '加工开始时间',
                              '加工完成时间',
                              '拆卸开始时间',
                              '拆卸完成时间',
                              '项目编号',
                              '入库组织',
                              '序列类型',
                              '计划跟踪号',
                              '单据生成方式(工序汇报)',
                              '合格品入库选单数量',
                              '合格品入库数量',
                              '不合格品入库选单数量',
                              '不合格品入库数量',
                              '工艺路线',
                              '是否有不良品',
                              '是否已生成不良品明细',
                              '质检方案',
                              '工作中心',
                              '作业',
                              '产品跟踪号',
                              '首检',
                              '辅助设备',
                              '返修处理状态',
                              '投入产品标识',
                              '来源汇报单编号',
                              '来源汇报单行号',
                              '箱号',
                              '汇报数量(总)',
                              '检验时间',
                              '返修处理选单数量',
                              '检验方式',
                              '初始待送检数量',
                              '模具',
                              '拆分箱标记',
                              '是否延迟审核',
                              '是否投料完整',
                              '资源',
                              '产品序列号'
                              
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesprocessreportodsbill_view_data', data = data)
                            tsui::run_download_xlsx(id = 'dl_krmesprocessreportodsbill',data = data,filename = '工序汇报下载.xlsx')
                            
                 
                          
                
  })
}



#' Title 后台处理总函数
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples HrvServer()
krmesprocessreportodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesprocessreportodsbillserver(input,output,session,dms_token)

}
