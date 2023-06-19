

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
#' @examples viewmiddleTableserver()  
viewmiddleTableserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_view_middleTable,
                        {
                            sql = 'select * from rds_hrv_src_ds_middleTable'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            #显示数据
                            tsui::run_dataTable2(id = 'view_data_middleTable', data = data)
                            
                            
                 
                          
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
jhhrvmiddleTableServer <- function(input,output,session,dms_token) {
  #预览数据
  viewmiddleTableserver(input,output,session,dms_token)

}
