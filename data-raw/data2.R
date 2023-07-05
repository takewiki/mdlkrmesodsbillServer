erp_token ='B3455A86-2376-4EF3-8000-39AA8B61B759'

mes_token ='F664DBC5-DA16-457B-A857-9E89A71D11C6'



data =tsda::sql_select2(token = erp_token,sql = "select FID,FNUMBER  from T_ENG_BOM ")
tsda::db_writeTable2(token = mes_token,table_name = 'takewiki_T_ENG_BOM',r_object = data,append = T)



data =tsda::sql_select2(token = erp_token,sql = "select FUSERID,FNAME  from T_SEC_USER ")
tsda::db_writeTable2(token = mes_token,table_name = 'takewiki_T_SEC_USER',r_object = data,append = T)






data =tsda::sql_select2(token = erp_token,sql = "select * from takewiki_t_material")
tsda::db_writeTable2(token = mes_token,table_name = 'takewiki_t_material',r_object = data,append = T)