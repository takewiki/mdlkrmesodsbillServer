

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
#' @examples viewtplvoucherserver()  
krmesstockodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesstockods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_warehouse'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('编码',
                                            '名称',
                                            '仓库地址',
                                            '部门',
                                            '仓库负责人',
                                            '仓库属性',
                                            '第三方仓储类型',
                                            '联系电话',
                                            '第三方仓库编码',
                                            '数据状态',
                                            '管易仓编码',
                                            '禁用状态',
                                            '库存状态类型',
                                            '管易仓',
                                            '管易同步状态',
                                            '允许即时库存负库存',
                                            '允许锁库',
                                            '分组',
                                            '供应商',
                                            '客户',
                                            '默认库存状态',
                                            '默认收料状态',
                                            '允许MRP计划',
                                            '启用仓位管理',
                                            '不参与可发量统计',
                                            '创建组织',
                                            '使用组织',
                                            '创建人',
                                            '创建日期',
                                            '最后修改人',
                                            '最后修改日期',
                                            '审核人',
                                            '审核日期',
                                            '禁用人',
                                            '禁用日期',
                                            '系统预置',
                                            '仓位值集编码',
                                            '仓位值编码',
                                            '参与预警',
                                            '参与拣货',
                                            '拣货优先级（1~9999）',
                                            '仓位维度数据列表显示格式'
                                            
                                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesstockods_view_data', data = data)
                            
                            
                 
                          
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
krmesstockodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesstockodsserver(input,output,session,dms_token)

}
