/* 
SAS Video Tutorial: Getting Started with SAS Studio 

In this video, you get started with programming in SAS Studio. You view a data table, write and submit SAS code, view the log and results, and use interactive features to quickly generate graphs and statistical analyses.

Ref.: https://video.sas.com/detail/videos/getting-started/video/4573016757001/getting-started-with-sas-studio?autoStart=true
*/

/* 
CONTENTS: 
- View a data table 
- Write and submit SAS code
- View the [LOG] and [RESULTS]
- Use [Tasks] to quickly generate graphs and statistical analyses 
*/

/* 
- SAS Studio is browser-based programming interface that connects to a local or hosted SAS server. 
- The server processes the code and then return the results to your SAS Studio session. 
*/

/* 
To see the data table named "CARS": 
[Libraries] > [My Libraries] > [SASHELP] > [CARS]
*/

proc print data=sashelp.cars; 
run; 

/* 
Click [Run all or selected code (F3)] button 
*/

/* 
Check [RESULTS] and [LOG] tabs
*/

/* 
To create a new .sas file: 
Click [New Options] button > select [New SAS Program (F4)]
*/

proc print data=sashelp.cars; 
	by Make; 
	var Make Model Type; 
run; 

/* 
If you don't remember the column names, there's a shortcut for this. Go to the navigation pane and expand the table. Select the columns and drag them into the VAR statement. 
*/

proc print data=sashelp.cars; 
	by Make; 
	var Make Model Type MPG_City MPG_Highway; 
run; 

/* 
Click [Run all or selected code (F3)] button 
*/

/* 
To generate reports and graphs with point-and-click tasks: 
*/
 
/*
To generate a report with point-and-click task: 
01) Navigation Pane 
02) Click [Tasks and Utilities] 
03) Expand [Tasks] 
04) Expand [Statistics] 
05) Double-click [Summary Statistics] to open the task 
06) Click [Select a Table] under the [DATA] section in the [DATA] tab
07) Expand [SASHELP] and select [CARS]
08) Click [OK]
09) Click [Add columns] under the [ROLES] section in the [DATA] tab
10) Select [Weight]
11) Click [OK]
*/

/* 
The code for the MEANS procedure is automatically generated. See below. 
*/

ods noproctitle;
ods graphics / imagemap=on;

proc means data=SASHELP.CARS chartype mean std min max n vardef=df;
	var Weight;
run;

/* 
Click [Run all or selected code (F3)] button 
*/

/*
To generate a graph with point-and-click task: 
01) Navigation Pane 
02) Click [Tasks and Utilities] 
03) Expand [Tasks] 
04) Expand [Graphs] 
05) Double-click [Bar Chart] to open the task 
06) Click [Select a Table] under the [DATA] section in the [DATA] tab
07) Expand [SASHELP] and select [FISH]
08) Click [OK]
09) Click [Add a column] next to [Category] under the [ROLES] section in the [DATA] tab
10) Select [Species]
11) Click [OK]
12) Select [Variable] next to [Measure] under the [ROLES] section in the [DATA] tab
13) Select [Weight] next to [Variable] under [Measure]
14) Select [Mean] under [Statistics] under [Measure]
15) Add a title under [Title] in the [TITLE AND FOOTNOTE] section in the [APPEARANCE] tab 
16) Select a color under [Set color] under the [BARS] section in the [APPEARANCE] tab 
17) Click [Run all or selected code (F3)] button 
*/
