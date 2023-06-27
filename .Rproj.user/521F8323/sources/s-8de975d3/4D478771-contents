

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
#' @examples viewdeptserver()  
krmesmaterialodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesmaterialods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_material'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('创建组织',
                                            '使用组织',
                                            '编码',
                                            '物料来源',
                                            '名称',
                                            '规格型号',
                                            '助记码',
                                            '旧物料编码',
                                            '物料分组',
                                            '数据状态',
                                            '禁用状态',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '禁用人',
                                            '禁用日期',
                                            '图片存储类型',
                                            '物料属性',
                                            '存货类别',
                                            '税分类',
                                            '默认税率',
                                            '基本单位',
                                            '允许采购',
                                            '允许库存',
                                            '允许委外',
                                            '允许销售',
                                            '允许生产',
                                            '允许转资产',
                                            '条码',
                                            '毛重',
                                            '净重',
                                            '尺寸单位',
                                            '长',
                                            '宽',
                                            '高',
                                            '重量单位',
                                            '体积',
                                            '采购单位',
                                            '图片(数据库)',
                                            '采购组织',
                                            '按批号匹配供需',
                                            '预计入库允许部分提前',
                                            '时间紧迫系数',
                                            '预计入库允许部分延后',
                                            '数量负荷系数',
                                            '标准人员准备工时',
                                            '标准人员实作工时',
                                            '标准机器准备工时',
                                            '标准机器实作工时',
                                            '图片(文件服务器)',
                                            '来料检验',
                                            '库存检验',
                                            '产品检验',
                                            '抽样方案',
                                            '质检方案',
                                            '启用库存周期复检',
                                            '复检周期',
                                            '启用库存周期复检提醒',
                                            '提醒提前期',
                                            '配置生产',
                                            '特征件子项',
                                            '套件',
                                            '结算成本价加减价比例(%)',
                                            '固定损耗',
                                            '禁用原因',
                                            '已使用',
                                            '是否变更中',
                                            '物料类型'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesmaterialods_view_data', data = data)
                            
                            
                 
                          
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
krmesmaterialodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesmaterialodsserver(input,output,session,dms_token)

}
