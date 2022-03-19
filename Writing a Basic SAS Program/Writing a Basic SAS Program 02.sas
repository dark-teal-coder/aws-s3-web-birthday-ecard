data highchol; 
	set sashelp.heart; 
	where Chol_Status="Help";
run; 

proc print data=highchol; 
run; 
