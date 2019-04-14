proc ttest data=sashelp.classfit plots=none;
     class sex;
     var   age;
run;

* DRAW INTERVAL;
* -------------
* plots(shownull)=interval *** => proc statement;


* SUPPRESS PLOTS;
* --------------;
* plots=none *** => proc statement;