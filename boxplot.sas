proc sgplot data=stat1.ameshousing3;
     vbox SalePrice / category=Central_Air
                       connect=mean;
     title "Boxplot of Price vs. Air Conditioning";
run;

title;