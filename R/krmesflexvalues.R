

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
#' @examples viewdeptcomparisonserver()  
krmesflexvaluesodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesflexvaluesods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_shippingspace'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('编码',
                                            '名称',
                                            '类型',
                                            '描述',
                                            '创建人',
                                            '审核人',
                                            '修改人',
                                            '禁用人',
                                            '数据状态',
                                            '创建日期',
                                            '修改日期',
                                            '审核日期',
                                            '禁用状态',
                                            '禁用日期',
                                            '编码',
                                            '名称',
                                            '说明',
                                            '禁用'
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesflexvaluesods_view_data', data = data)
                            
                            
                 
                          
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
krmesflexvaluesodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesflexvaluesodsserver(input,output,session,dms_token)

}
