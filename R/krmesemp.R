

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
#' @examples viewcosucompanyserver()  
krmesempodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesempods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_employee'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('员工姓名',
                                            '员工编号',
                                            '移动电话',
                                            '固定电话',
                                            '电子邮箱',
                                            'HR员工',
                                            '使用组织',
                                            '来源于s-HR',
                                            '创建组织',
                                            '人员',
                                            '数据状态',
                                            '禁用状态',
                                            '联系地址',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '禁用人',
                                            '禁用日期',
                                            '国家',
                                            '银行账号',
                                            '账户名称',
                                            '币别',
                                            '默认',
                                            '描述',
                                            '开户行地址',
                                            '联行号',
                                            '收款银行',
                                            '网点名称',
                                            '银行网点'
                            ) 
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesempods_view_data', data = data)
                            
                            
                 
                          
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
krmesempodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesempodsserver(input,output,session,dms_token)

}
