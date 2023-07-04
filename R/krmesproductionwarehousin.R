

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
krmesproductionwarehousinodsbillserver <- function(input,output,session,dms_token) {

  
  var_dr_krmesproductionwarehousinodsbill =tsui::var_dateRange('dr_krmesproductionwarehousinodsbill')
    shiny::observeEvent(input$btn_krmesproductionwarehousinodsbill_view,
                        {
                          
                          dates = var_dr_krmesproductionwarehousinodsbill()
                          start = as.character(dates[1])
                          end = as.character(dates[2])
                            sql = paste0("select * from rds_kr_mes_ods_productionwarehousing
                                          where  FDate >='",start,"' and  FDate <='",end,"'")
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('单据编号',
                                            '单据类型',
                                            '日期',
                                            '单据状态',
                                            '入库组织',
                                            '仓管员',
                                            '生产组织',
                                            '货主',
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
                                            '产品类型',
                                            '入库类型',
                                            '货主',
                                            '单位',
                                            '应收数量',
                                            '实收数量',
                                            '仓库',
                                            '仓位',
                                            '批号',
                                            '计划跟踪号',
                                            '生产车间',
                                            'BOM版本',
                                            '班组',
                                            '辅助属性',
                                            '保管者类型',
                                            '保管者',
                                            '库存状态',
                                            '生产日期',
                                            '有效期至',
                                            '库存单位',
                                            '库存单位实收数量',
                                            '源单类型',
                                            '辅助单位',
                                            '源单编号',
                                            '辅助单位实收数量',
                                            '源单行号',
                                            '生产订单编号',
                                            '生产订单行号',
                                            '跨组织结算生成',
                                            '成本权重',
                                            '完工',
                                            '倒冲领料',
                                            '需求来源',
                                            '需求单据',
                                            '需求单据行号',
                                            '退库选单数',
                                            '基本单位退库选单数量',
                                            '组织间结算跨法人',
                                            '产线',
                                            '内部订单号'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesproductionwarehousinodsbill_view_data', data = data)
                            
                            tsui::run_download_xlsx(id = 'dl_krmesproductionwarehousinodsbill',data = data,filename = '生产入库下载.xlsx')
                            
                            
                 
                          
                    
    
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
krmesproductionwarehousinodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesproductionwarehousinodsbillserver(input,output,session,dms_token)

}
