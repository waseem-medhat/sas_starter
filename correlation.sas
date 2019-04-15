proc corr data=sashelp.bmimen;
     var age;
     with bmi;
run;

* RANK CORRELATIONS IN OUTPUT;
* ---------------------------;
* rank *** => PROC statement;

* ONLY SHOW HIGHEST N CORRELATIONS;
* --------------------------------;
* best=n *** => PROC statement;

* SCATTERPLOTS;
* ------------;
* plots(only)=scatter(nvar=all ellipse=none) *** => PROC statement;

* TOOLTIPS IN SCATTERPLOTS;
* ------------------------;
* ods graphics / reset=all imagemap; *** => global;

* SUPPRESS DESCRIPTIVES;
* ---------------------;
* nosimple *** => PROC statement;