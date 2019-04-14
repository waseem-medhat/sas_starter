proc sgplot data=sashelp.classfit;
     vbox age / category=sex;
     title "Boxplot of Price vs. Air Conditioning";
run;

title;


* CONNECT BOXPLOTS WITH LINE;
* --------------------------
* connect=mean *** => vbox statement after '/';