* ANOVA;
proc glm data=sashelp.shoes
         order=internal
         plots(only)=intplot;
     class region product;
     model sales = product | region;
     lsmeans product*region / diff slice=product;
     title "Getting Serious: 2-Way ANOVA with Interaction (man!)";
     store out=interactionObj;
run;
quit;


* Post-fitting analysis;
proc plm restore=interactionObj plots=all;
     slice product*region / sliceby=product adjust=tukey;
     effectplot interaction(sliceby=product) / clm connect;
run;
     

title;

