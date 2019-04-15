proc glm data=sashelp.shoes plots=diagnostics;
     class Product;
     model Sales=Product;
     means Product / hovtest=levene;
     format Product $Product.;
     title "One-Way ANOVA";
run;
quit;

title;

* POST-HOC TESTS;
* --------------;
* lsmeans product / adjust=control('Sandal') adjust=dunnett; *** => separate statement;
* plots(only)=(diffplot(center) controlplot) *** => PROC statement;