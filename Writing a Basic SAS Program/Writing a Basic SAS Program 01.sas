data europeancars; 
	set sashelp.cars; 
	where origin="Europe"; 
run; 

proc print data=europeancars; 
run; 
