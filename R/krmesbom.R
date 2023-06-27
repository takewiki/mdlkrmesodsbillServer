

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
#' @examples viewacctreclassserver()  
krmesbomodsserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesbomods_view,
                        {
                            sql = 'select * from rds_kr_mes_ods_bd_billmaterials'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('创建组织',
                                            '使用组织',
                                            'BOM版本',
                                            'BOM简称',
                                            'BOM分类',
                                            '单据类型',
                                            'BOM用途',
                                            'BOM分组',
                                            '父项物料编码',
                                            '父项物料单位',
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
                                            '项次',
                                            '子项物料编码',
                                            '供应类型',
                                            '子项类型',
                                            '子项单位',
                                            '供应组织',
                                            '用量类型',
                                            '用量:分子',
                                            '用量:分母',
                                            '超发控制方式',
                                            '固定损耗',
                                            '变动损耗率%',
                                            '子项BOM版本',
                                            '默认发料仓库',
                                            '发料方式',
                                            '倒冲时机',
                                            '默认发料仓位',
                                            '是否发损耗',
                                            '偏置时间',
                                            '时间单位',
                                            '是否关键件',
                                            '可选择',
                                            '可修改',
                                            '可替换',
                                            '货主类型',
                                            '货主',
                                            '辅助属性',
                                            '替代策略',
                                            '替代方式',
                                            '替代优先级',
                                            '动态优先级',
                                            '替代主料',
                                            '禁用原因',
                                            '工序序列',
                                            '跳层',
                                            '领料考虑最小发料批量',
                                            '变更单号',
                                            '变更类型',
                                            '变更日期',
                                            '供料方式',
                                            '辅助属性',
                                            '产品模型',
                                            'CloudPLMBOM分录内码',
                                            'MRP运算',
                                            '替代方案编码',
                                            '替代方案分录内码',
                                            '是否变更中',
                                            '净需求比例(%)',
                                            '工装位置/功能'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesbomods_view_data', data = data)
                            
                            
                 
                          
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
krmesbomodsServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesbomodsserver(input,output,session,dms_token)

}
