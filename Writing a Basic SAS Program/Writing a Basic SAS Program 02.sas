/* 
SAS Video Tutorial: Writing a Basic SAS Program

Ref.: https://video.sas.com/detail/videos/getting-started-with-sas-studio/video/4573016765001/writing-a-basic-sas-program
*/

/* To specify the name of the new table */
data highchol; 
	/* To specify the input source */
	set sashelp.heart; 
	where Chol_Status="Help";
run; 

/* To generate a list report of the table */
proc print data=highchol; 
run; 

/* 
Click [Run all or selected code (F3)] button 
*/
