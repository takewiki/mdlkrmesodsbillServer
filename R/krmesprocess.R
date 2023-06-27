

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
krmesprocessodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesprocessods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_job'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('创建组织',
                                            '使用组织',
                                            '编码',
                                            '名称',
                                            '生效日期',
                                            '失效日期',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '数据状态',
                                            '禁用人',
                                            '禁用日期',
                                            '禁用状态',
                                            '缺陷类型编码',
                                            '数据采集顺序',
                                            '特征标识',
                                            '自动生成条码拆装箱单',
                                            '强制换箱打印箱号标签',
                                            '仓库仓位',
                                            '计划跟踪号',
                                            '批号',
                                            'BOM版本',
                                            '辅助属性',
                                            '客户',
                                            '生产订单分录'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesprocessods_view_data', data = data)
                            
                            
                 
                          
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
krmesprocessodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesprocessodsserver(input,output,session,dms_token)

}
