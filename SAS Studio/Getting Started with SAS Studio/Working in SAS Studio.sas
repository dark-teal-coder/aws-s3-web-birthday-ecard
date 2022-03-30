/*
SAS Video Tutorial: Working in SAS Studio

Ref.: https://video.sas.com/detail/videos/getting-started-with-sas-studio/video/4664335808001/working-in-sas-studio
*/

/* 
Navigation Pane: 
- [Files and Folders]: files SAS can access 
- [Tasks]: SAS code and formatted results based on SAS procedures 
- [Snippets]: samples of commonly used SAS code to insert into programs
- [Libraries]: references to tables within a SAS program
- [File Shortcuts]: file shortcuts 
*/

/* 
To use a snippet: 
01) Click [Snippets]
02) Expand [Snippets]
03) Expand [Graphs]
04) Double-click [HBar Plot]
*/

/*--HBar Plot--*/

title 'Mileage by Type';
proc sgplot data=sashelp.cars ;
	hbar type / response=mpg_city  stat=mean  limits=both;
	yaxis display=(nolabel) grid;
	xaxis display=(nolabel);
	run;

/* Modify the above generated code */

title 'Average Salary by Team';
proc sgplot data=sashelp.baseball ;
	hbar team / response=salary stat=mean;
	yaxis display=(nolabel) grid;
	xaxis display=(nolabel);
	run;

/*
To add a snippet to [My Snippets]
01) Click [Code] tab
02) Click [Add to My Code Snippets]
*/
