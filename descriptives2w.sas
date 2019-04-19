proc means data=sashelp.shoes
           mean var std nway;
     class region product;
     var sales;
     title "Descriptive Stats";
run;