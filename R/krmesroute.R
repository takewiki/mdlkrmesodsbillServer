


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
#' @examples viewsalaryserver()
krmesrouteodsserver <- function(input, output, session, dms_token) {
  shiny::observe({
    shiny::observeEvent(input$btn_krmesrouteods_view,
                        {
                          sql = 'select * from rds_kr_mes_ods_bd_processroute'
                          
                          data = tsda::sql_select2(token = dms_token, sql = sql)
                          names(data) = c(
                            '创建组织',
                            '使用组织',
                            '工艺路线编码',
                            '工艺路线名称',
                            '物料编码',
                            '数据状态',
                            '禁用状态',
                            '描述',
                            '工艺类型',
                            '工艺路线分组',
                            '生产车间',
                            '序列号',
                            '序列名称',
                            '序列类型',
                            '工序号',
                            '加工组织',
                            '工作中心',
                            '加工车间',
                            '作业',
                            '工序控制码',
                            '活动一数量',
                            '活动一单位',
                            '活动二数量',
                            '活动二单位',
                            '物料分组',
                            '质检方案',
                            '首检',
                            '联动排程',
                            '排程触发时机',
                            '排程资源',
                            '活动一活动量公式',
                            '活动一活动汇报量公式',
                            '活动二活动量公式',
                            '活动二活动汇报量公式',
                            '活动三活动量公式',
                            '活动三活动汇报量公式',
                            '活动四活动量公式',
                            '活动四活动汇报量公式',
                            '活动五活动量公式',
                            '活动五活动汇报量公式',
                            '活动六活动量公式',
                            '活动六活动汇报量公式',
                            '扫描特征码',
                            '不良返修方式',
                            '触摸屏录入不良启用位置号',
                            'BOM版本',
                            '辅助属性',
                            '首检控制方式',
                            '入库点序',
                            '检测方案(过程记录)',
                            '检测方案(过程检测)',
                            '检测方案明细(过程记录)',
                            '检测方案明细(过程检测)',
                            '扫描时校验前序过程记录有效性',
                            '扫描时校验前序检测记录有效性',
                            '中间工序废品',
                            '资源',
                            '使用比例',
                            '资源需求数量',
                            '操作时长(分)',
                            '工时录入',
                            '手动提交报工',
                            '报工时校验本序过程记录有效性',
                            '报工时校验本序检测记录有效性',
                            '工时采集',
                            '工时采集控制'
                            
                          )
                          #显示数据
                          tsui::run_dataTable2(id = 'krmesrouteods_view_data', data = data)
                          
                          
                          
                          
                          
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
krmesrouteodsServer <- function(input, output, session, dms_token) {
  #预览数据
  krmesrouteodsserver(input, output, session, dms_token)
  
}
