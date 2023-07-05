

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
krmesprocesstransferodsbillserver <- function(input,output,session,dms_token) {

  var_krmesprocesstransferodsbill =tsui::var_dateRange('dr_krmesprocesstransferodsbill')

    shiny::observeEvent(input$btn_krmesprocesstransferodsbill_view,
                        {
                          
                          dates = var_krmesprocesstransferodsbill()
                          start = as.character(dates[1])
                          end = as.character(dates[2])
                            sql = paste0("select * from rds_kr_mes_vw_processtransfer
                                         where  FBILLDATE >='",start,"' and  FBILLDATE <='",end,"'
                                         ")
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('单据编号',
                                            '转移类型',
                                            '单据日期',
                                            '单据状态',
                                            '生产组织',
                                            '生产订单号',
                                            '生产订单行号',
                                            '产品编码',
                                            'BOM版本',
                                            '辅助属性',
                                            '转出采购组织',
                                            '转出供应商',
                                            '转出加工组织',
                                            '转出加工车间',
                                            '转出工作中心',
                                            '转出工序计划号',
                                            '转出序列号',
                                            '转出工序号',
                                            '转出作业',
                                            '转入采购组织',
                                            '转入供应商',
                                            '转入加工组织',
                                            '转入加工车间',
                                            '转入工作中心',
                                            '转入工序计划号',
                                            '转入序列号',
                                            '转入工序号',
                                            '转入作业',
                                            '工序单位',
                                            '转移数量',
                                            '合格数量',
                                            '计价合格数量',
                                            '工废数量',
                                            '计价工废数量',
                                            '料废数量',
                                            '计价料废数量',
                                            '委外接收合格含税单价',
                                            '委外接收合格单价',
                                            '委外接收工废含税单价',
                                            '委外接收工废单价',
                                            '委外接收料废含税单价',
                                            '委外接收料废单价',
                                            '委外接收币别',
                                            '委外发出合格含税单价',
                                            '委外发出合格单价',
                                            '委外发出工废含税单价',
                                            '委外发出工废单价',
                                            '委外发出料废含税单价',
                                            '委外发出料废单价',
                                            '委外发出币别',
                                            '需求单据编号',
                                            '需求单据行号',
                                            '计划跟踪号',
                                            '批号',
                                            '业务流程',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '单据类型',
                                            '业务类型',
                                            '备注',
                                            '生产车间',
                                            '订单数量',
                                            '转出工序说明',
                                            '转入工序说明',
                                            '转出业务员',
                                            '转入业务员',
                                            '检验选单数量',
                                            '检验数量',
                                            '废品数量',
                                            '质量检验',
                                            '质检方案',
                                            '合格入库选单数量',
                                            '废品入库选单数量',
                                            '合格入库数量',
                                            '废品入库数量',
                                            '合格结算选单数量',
                                            '合格结算数量',
                                            '工废结算选单数量',
                                            '工废结算数量',
                                            '料废结算选单数量',
                                            '料废结算数量',
                                            '委外接收计价单位',
                                            '委外发出计价单位',
                                            '结算方类型',
                                            '委外接收税率%',
                                            '委外发出税率%',
                                            '需求来源',
                                            '换算类型',
                                            '单位转换率生产数量',
                                            '单位转换率工序数量',
                                            '单位转换率计价数量',
                                            '工序状态',
                                            '入库状态',
                                            '结算状态',
                                            '实际入库数量',
                                            '回冲源单',
                                            '发出重量（kg）',
                                            '预交日期',
                                            '合计金额',
                                            '小数',
                                            '其他要求'
                                            
                                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesprocesstransferodsbill_view_data', data = data)
                            
                            tsui::run_download_xlsx(id = 'dl_krmesprocesstransferodsbill',data = data,filename = '工序转移下载.xlsx')
                            
                            
                 
                          
           
    
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
krmesprocesstransferodsbillServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesprocesstransferodsbillserver(input,output,session,dms_token)

}
