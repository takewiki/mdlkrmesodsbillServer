

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
krmesproductionfeedodsbillserver <- function(input,output,session,dms_token) {

  
  var_dr_krmesproductionfeedodsbill =tsui::var_dateRange('dr_krmesproductionfeedodsbill')
    shiny::observeEvent(input$btn_krmesproductionfeedodsbill_view,
                        {
                          
                          dates = var_dr_krmesproductionfeedodsbill()
                          start = as.character(dates[1])
                          end = as.character(dates[2])
                          
                            sql = paste0("select * from rds_kr_mes_vw_productionfeed
                                         where  FDate >='",start,"' and  FDate <='",end,"'"  )
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = 
                              c('单据编号',
                                '产品编码',
                                '产品名称',
                                '单据类型',
                                '仓管员',
                                '日期',
                                '单据状态',
                                '发料组织',
                                '生产组织',
                                '创建人',
                                '创建日期',
                                '修改人',
                                '修改日期',
                                '审核人',
                                '用料清单编号',
                                '审核日期',
                                '作废人',
                                '作废日期',
                                '作废状态',
                                '车间',
                                '物料编码',
                                '单位',
                                '申请数量',
                                '实发数量',
                                '报废数量',
                                '补料原因',
                                '仓库',
                                '仓位',
                                '批号',
                                'BOM版本',
                                '辅助属性',
                                '保管者类型',
                                '保管者',
                                '库存状态',
                                '生产日期',
                                '系统源单类型',
                                '有效期至',
                                '系统源单编号',
                                '主库存单位',
                                '系统源单行号',
                                '生产订单编号',
                                '主库存单位数量',
                                '生产订单行号',
                                '辅库存单位',
                                '辅库存单位数量',
                                '退料选单数量',
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
                                '货主含组织',
                                '基本单位采购申请选单数量',
                                '采购申请选单数量',
                                '组织间结算跨法人标识',
                                '生产退料检验',
                                '基本单位生产退料请检选单数量',
                                '生产退料请检选单数量',
                                '内部订单号'
                                
                                
                              )
                            
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesproductionfeedodsbill_view_data', data = data)
                            tsui::run_download_xlsx(id = 'dl_krmesproductionfeedodsbill',data = data,filename = '生产补料下载.xlsx')
                            
                            
                 
                          
                    
    
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
krmesproductionfeedodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesproductionfeedodsbillserver(input,output,session,dms_token)

}
