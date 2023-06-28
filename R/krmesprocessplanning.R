

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
#' @examples viewfnoteserver()  
krmesprocessplanningodsbillserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesprocessplanningodsbill_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_processplanning'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('生产组织',
                                            '生产车间',
                                            '生产订单编号',
                                            '生产订单行号',
                                            '单据状态',
                                            '产品编码',
                                            'BOM版本',
                                            '辅助属性',
                                            '计划开工时间',
                                            '计划完工时间',
                                            '单位',
                                            '工艺路线',
                                            '排程模型',
                                            '需求单据编号',
                                            '需求单据行号',
                                            '计划跟踪号',
                                            '批号',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '单据编号',
                                            '计划类型',
                                            '打印次数',
                                            '打印时间',
                                            '序列类型',
                                            '对齐方式',
                                            '序列号',
                                            '参照序列',
                                            '转出工序',
                                            '转入工序',
                                            '计划完成时间',
                                            '工序号',
                                            '工序数量',
                                            '转入数量',
                                            '合格数量',
                                            '转出数量',
                                            '废品数量',
                                            '工废数量',
                                            '料废数量',
                                            '损耗数量',
                                            '汇报选单数量',
                                            '转移选单数量',
                                            '加工组织',
                                            '工作中心',
                                            '加工车间',
                                            '作业',
                                            '工序控制码',
                                            '关键工序',
                                            '状态',
                                            '作废',
                                            '工序单位',
                                            '基本批量',
                                            '计划结束时间',
                                            '活动一单位',
                                            '活动一已汇报量',
                                            '活动二单位',
                                            '活动二已汇报量',
                                            '活动三已汇报量',
                                            '活动四已汇报量',
                                            '活动五已汇报量',
                                            '活动六已汇报量',
                                            '活动一基本量',
                                            '活动二基本量',
                                            '委外',
                                            '返修转出数量',
                                            '生产单位返修转出数量',
                                            '基本单位返修转出数量',
                                            '首检',
                                            '联动排程',
                                            '排程触发时机',
                                            '首检状态',
                                            '扫描特征码',
                                            '首序阶段',
                                            '下达日期',
                                            '巡检状态',
                                            '待返修数量',
                                            '返修汇报选单数量',
                                            '返修汇报完工数量',
                                            '不良返修方式',
                                            '触摸屏录入不良启用位置号',
                                            '首检控制方式',
                                            '可超额汇报数量',
                                            '退库数量',
                                            '启用派工明细',
                                            '入库点序',
                                            '工序盘点差异',
                                            '基本单位工序盘点差异',
                                            '生产单位工序盘点差异',
                                            '工序领料状态',
                                            '操作工信息',
                                            '检测方案明细(过程记录)',
                                            '检测方案明细(过程检测)',
                                            '扫描时校验前序过程记录有效性',
                                            '扫描时校验前序检测记录有效性',
                                            '中间工序废品',
                                            '是否手动完工',
                                            '手动提交报工',
                                            '报工时校验本序过程记录有效性',
                                            '报工时校验本序检测记录有效性',
                                            '工时采集',
                                            '已领最大套数',
                                            '工时采集控制'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesprocessplanningodsbill_view_data', data = data)
                            
                            
                 
                          
                        })
    
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
krmesprocessplanningodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesprocessplanningodsbillserver(input,output,session,dms_token)

}
