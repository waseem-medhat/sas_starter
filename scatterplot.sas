proc sgscatter data=stat1.ameshousing3;
     plot saleprice*(&interval);
     title "Association Between Interval Variables and Sale Price";
run;

title;

* USE VARIABLE NAMES NOT LABELS;
* -----------------------------;
* options nolabel; *** => before the PROC step;

* ADD A REGRESSION LINE;
* ---------------------;
* / reg; *** => in the PLOT statement;