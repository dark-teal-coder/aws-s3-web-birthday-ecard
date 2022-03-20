/* 
SAS Video Tutorial: Writing a Basic SAS Program

Ref.: https://video.sas.com/detail/videos/getting-started-with-sas-studio/video/4573016765001/writing-a-basic-sas-program
*/

/* This DATA step uses an existing SAS table to create a new table containing a subset of the original data. */
data europeancars; 
	/* To specify the table */
	set sashelp.cars; 
	where origin="Europe"; 
run; 

/* This PROC step generates a list report of the table "europeancars". */
proc print data=europeancars; 
run; 

/* 
Click [Run all or selected code (F3)] button 
*/

/* 
- DATA steps: create or modify SAS tables
	- to put your data in a SAS table 
	- to compute values 
	- to check for or correct errors in your data 
	- to produce new tables by subsetting, supersetting, merging and updating existing tables 
- PROC/PROCEDURE steps: analyze or process the data in a table and present your data 
	- to summarize, sort and list data
	- to produce descriptive statistics 
	- to generate reports and graphs 
- RUN statements: execute the code in DATA and PROC steps 
*/

/* 
To create a new .sas file: 
01) Click [New Options] button 
02) Select [New SAS Program (F4)]
*/
