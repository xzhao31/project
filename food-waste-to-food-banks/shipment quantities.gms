$title a transportation model for food banks in Maricopa, AZ

Sets
     i   sources   / FMP41928, FMP41929, FMP52709, FMP36525, FMP51166, FMP42636, FMP32389, FMP32390, FMP24370, FMP34519,
                     FMP13844, FMP28321, FMP48143, FMP60799, FMP9728, FMP34177, FMP7751 /
     j   sinks     / FB012, FB013 / ;

Parameters

     a(i)  capacity of plant i in cases
       /    FMP41928 27433.2
            FMP41929 5017.5
            FMP52709 4460
            FMP36525 2813.275
            FMP51166 2361.475
            FMP42636 752.625
            FMP32389 647.85
            FMP32390 460.725
            FMP24370 332.5
            FMP34519 306.075
            FMP13844 297.8
            FMP28321 278
            FMP48143 250.15
            FMP60799 228.475
            FMP9728 223.725
            FMP34177 223
            FMP7751 215.35   /

     b(j)  demand at market j in cases
       /    FB012 21801
            FB013 24500.725    / ;
            


Table d(i,j)  distance in thousands of miles
                        FB012     FB013
            FMP41928	18.7	  2.24
            FMP41929	18.7	  2.24
            FMP52709	20.9	  5.71
            FMP36525	16.8	  2.36
            FMP51166	99.0      7.83
            FMP42636	5.54	  11.5
            FMP32389	16.2	  2.41
            FMP32390	16.2	  2.41
            FMP24370	12.9	  4.79
            FMP34519	9.15	  8.49
            FMP13844	3.14	  19.0
            FMP28321	10.4	  6.71
            FMP48143	21.1	  5.04
            FMP60799	99.0	  8.61
            FMP9728	    99.0      16.3
            FMP34177	4.0	      18.8
            FMP7751	    3.56      99.0   ;

Scalar f  freight in dollars per case per thousand miles  /90/ ;

Parameter c(i,j)  transport cost in thousands of dollars per case ;

          c(i,j) = f * d(i,j) / 1000 ;

Variables
     x(i,j)  shipment quantities in cases
     z       total transportation costs in thousands of dollars ;

Positive Variable x ;

Equations
     cost        define objective function
     supply(i)   observe supply limit at plant i
     demand(j)   satisfy demand at market j ;

cost ..        z  =e=  sum((i,j), c(i,j)*x(i,j)) ;

supply(i) ..   sum(j, x(i,j))  =l=  a(i) ;

demand(j) ..   sum(i, x(i,j))  =g=  b(j) ;

Model transport /all/ ;

Solve transport using lp minimizing z ;

Display x.l, x.m ;