

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
krmesproductionreturnodsbillserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesproductionreturnodsbill_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_productionreturn'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('单据编号',
                                            '产品编码',
                                            '单据类型',
                                            '退料人',
                                            '仓管员',
                                            '车间',
                                            '日期',
                                            '单据状态',
                                            '收料组织',
                                            '生产组织',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '作废人',
                                            '作废日期',
                                            '作废状态',
                                            '物料编码',
                                            '单位',
                                            '申请数量',
                                            '实退数量',
                                            '退料类型',
                                            '退料原因',
                                            '仓库',
                                            '仓位',
                                            '批号',
                                            'BOM版本',
                                            '辅助属性',
                                            '保管者类型',
                                            '保管者',
                                            '库存状态',
                                            '系统源单类型',
                                            '生产日期',
                                            '系统源单编号',
                                            '有效期至',
                                            '系统源单行号',
                                            '主库存单位',
                                            '生产订单编号',
                                            '生产订单行号',
                                            '辅库存单位',
                                            '补料选单数',
                                            '工序号',
                                            '作业',
                                            '业务源单类型',
                                            '业务源单编号',
                                            '业务源单行号',
                                            '跨法人交易',
                                            '消耗汇总',
                                            'VMI业务',
                                            '需求来源',
                                            '需求单据',
                                            '需求单据行号',
                                            '设备',
                                            '倒冲来源',
                                            '货主含组织',
                                            '不更新未领',
                                            '组织间结算跨法人标识',
                                            '生产退料检验',
                                            '内部订单号'
                                            
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesproductionreturnodsbill_view_data', data = data)
                            
                            
                 
                          
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
krmesproductionreturnodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesproductionreturnodsbillserver(input,output,session,dms_token)

}
