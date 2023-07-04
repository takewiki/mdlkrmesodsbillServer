

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
#' @examples viewrditemserver()  
krmesproductionorderodsbillserver <- function(input,output,session,dms_token) {

  
  var_dr_krmesproductionorderodsbill =tsui::var_dateRange('dr_krmesproductionorderodsbill')
    shiny::observeEvent(input$btn_krmesproductionorderodsbill_view,
                        {
                          
                          dates = var_dr_krmesproductionorderodsbill()
                          start = as.character(dates[1])
                          end = as.character(dates[2])
                            sql = paste0("select * from rds_kr_mes_ods_productionorder
                                         where  FDate >='",start,"' and  FDate <='",end,"'")
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('单据编号',
                                            '单据类型',
                                            '单据日期',
                                            '单据状态',
                                            '生产组织',
                                            '计划组',
                                            '计划员',
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
                                            '产品类型',
                                            '物料编码',
                                            '不合格品入库选单数量',
                                            '生产车间',
                                            '单位',
                                            '数量',
                                            '成品数量',
                                            '业务状态',
                                            '挂起状态',
                                            '计划开工时间',
                                            '计划完工时间',
                                            'BOM版本',
                                            '批号',
                                            '工艺路线',
                                            '入库组织',
                                            '仓库',
                                            '仓位',
                                            '入库上限',
                                            '入库下限',
                                            '产出工序',
                                            '产出作业编码',
                                            '成本权重',
                                            '计划确认日期',
                                            '排程日期',
                                            '下达日期',
                                            '开工日期',
                                            '完工日期',
                                            '结案日期',
                                            '结算日期',
                                            '汇报选单数量',
                                            '合格数量',
                                            '不合格数量',
                                            '合格品入库选单数量',
                                            '合格品入库数量',
                                            '不合格品入库数量',
                                            '生成方式',
                                            '源单类型',
                                            '源单编号',
                                            '源单分录行号',
                                            '需求单据',
                                            '需求单据行号',
                                            '辅助属性',
                                            '需求类型',
                                            '需求优先级',
                                            '计划跟踪号',
                                            '备料套数',
                                            '已计划运算',
                                            '报废数量',
                                            '返修数量',
                                            '报废品入库选单数量',
                                            '报废品入库数量',
                                            '入库货主类型',
                                            '入库货主',
                                            '产品检验',
                                            '产出序列',
                                            '紧急放行',
                                            '委托组织',
                                            '倒冲领料',
                                            '未入库数量',
                                            '产线',
                                            '排产序号',
                                            '排程开工时间',
                                            '排程完工时间',
                                            '结案人',
                                            '序列号单位',
                                            '序列号单位数量',
                                            '结案类型',
                                            '排程工序拆分数',
                                            '退库数量',
                                            '基本单位退库数量',
                                            '合格品退库数量',
                                            '基本合格品退库数量',
                                            '不合格品退库数量',
                                            '基本不合格品退库数量',
                                            '报废品退库数量',
                                            '基本报废品退库数量',
                                            '领料套数',
                                            '基本单位领料套数',
                                            '领料状态',
                                            '源拆分订单编号',
                                            '上级订单BOM分录内码',
                                            '返工品退库数量',
                                            '基本单位返工品退库数量',
                                            '返工数量',
                                            '返工品入库数量',
                                            '返工品入库选单数量',
                                            '基本单位已排产数量',
                                            '已排产数量',
                                            '排产状态',
                                            '首检',
                                            '首检状态',
                                            '基本单位样本破坏数',
                                            '样本破坏数',
                                            '启用日排产',
                                            '预计齐套数量',
                                            '库存齐套数',
                                            '齐套状况',
                                            '跟进备注',
                                            '预计齐套日期',
                                            '联副产品备注',
                                            '内部订单号'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesproductionorderodsbill_view_data', data = data)
                            tsui::run_download_xlsx(id = 'dl_krmesproductionorderodsbill',data = data,filename = '生产订单下载.xlsx')
                            
                            
                 
                          
                     
    
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
krmesproductionorderodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesproductionorderodsbillserver(input,output,session,dms_token)

}
