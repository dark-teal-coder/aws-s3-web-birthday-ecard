/* 
SAS Video Tutorial: Using Snippets in SAS Studio 

Ref.: https://video.sas.com/detail/videos/getting-started-with-sas-studio/video/5822922706001/using-snippets-in-sas-studio
*/

/* 
To use a snippet: 
01) Go to the navigation panel 
02) Expand [Snippets]
03) Expand [Data]
04) Double-click [Generate PowerPoint Slide]
/* 

/* The following code will be automatically generated */

/* Stream powerpoint output directly to the user's browser. */

ods graphics on / border=off;
filename _dataout "&_SASWSTEMP_/SGPlot.pptx";

ods powerpoint file=_dataout;

title 'PROC SGRENDER';
footnote 'ODS Destination for PowerPoint';

title 'Horsepower by Type and Origin';
proc sgplot data=sashelp.cars;
  dot type / response=horsepower limits=both stat=mean
      markerattrs=(symbol=circlefilled size=9);
  xaxis grid;
  yaxis display=(nolabel) offsetmin=0.1;
  keylegend / location=inside position=topright across=1;
  run;

ods powerpoint close;

%let _DATAOUT_MIME_TYPE=application/vnd.openxmlformats-officedocument.presentationml.presentation;
%let _DATAOUT_NAME=sgplot.pptx;

/* Remove the lines between the 2 ODS POWERPOINT statements and insert the PROC SGPLOT step below */

ods graphics on / border=off;
filename _dataout "&_SASWSTEMP_/SGPlot.pptx";

ods powerpoint file=_dataout;

/* Use SAS MACRO facility to provide the current date and time at execution */
footnote1 "Report Created on %sysfunc(today(), date9.) at %sysfunc(time(), timeampm.)"; 

/* To create a verticle bar chart */
proc sgplot data=sashelp.heart; 
	title "Number of Patients by Blood Pressure Category"; 
	vbar Chol_Status / fillType=gradient dataskin=Gloss name="Bar"; 
	yaxis grid; 
run; 

ods powerpoint close;

%let _DATAOUT_MIME_TYPE=application/vnd.openxmlformats-officedocument.presentationml.presentation;
%let _DATAOUT_NAME=sgplot.pptx;

/* To reuse code, we can click [Add to My Snippets] */
/* E.g., add the footnote1 line to My Snippets */