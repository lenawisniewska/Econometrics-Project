********************************
*   Sections 4 & 5: Analysis   *
********************************

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", clear

* Section 4: Association between age of retirement and GDP pc

//pooled OLS
eststo clear 
reg lgdppc depratio retage lfpr govdebt educ i.time_numeric, vce(robust) 
eststo

//first difference
reg dlgdppc ddepratio dretage dlfpr dgovdebt deduc i.time_numeric, vce(robust) 
test dretage ddepratio 
eststo

//fixed effects
xtreg lgdppc depratio retage lfpr govdebt educ i.time_numeric, fe vce(robust) 
test retage depratio
eststo 

//Arellano-Bond
xtabond lgdppc depratio retage lfpr govdebt educ time_numeric, robust
test retage depratio 
eststo

esttab

* Omitting govdebt and lfpr

//pooled OLS
eststo clear 
reg lgdppc depratio retage educ i.time_numeric, vce(robust)
eststo

//first difference
reg dlgdppc ddepratio dretage deduc i.time_numeric, vce(robust) 
test dretage ddepratio
eststo

//fixed effects
xtreg lgdppc depratio retage educ i.time_numeric, fe vce(robust)
test retage depratio
eststo 

//Arellano-Bond
xtabond lgdppc depratio retage educ time_numeric, robust
test retage depratio
eststo

esttab
save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", replace
clear

* Section 5: Determinants of effective retirement age and lfpr

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged16.dta", clear

eststo clear 
xtabond lfpr6569 educ emp_agri emp_serv emp_manu deprat lwage time_numeric, robust //omit indus
eststo

xtabond lfpr6569 educ emp_indus emp_serv emp_manu deprat lwage time_numeric, robust //omit agri
eststo

xtabond lfpr6569 educ emp_agri emp_serv emp_indus deprat lwage time_numeric, robust //omit manu
eststo

xtabond lfpr6569 educ emp_indus emp_agri emp_manu deprat lwage time_numeric, robust //omit serv
eststo

esttab

******************************
*   Section 6: Diagnostics   *
******************************

//Ramsey RESET: functional form
eststo clear 
xtabond retage educ emp_manu emp_serv emp_agri deprat lwage time_numeric, robust //I omit employment in industry to avoid perfect collinearity
predict yhat
gen yhat2 = yhat^2
gen yhat3 = yhat^3
xtabond retage educ emp_manu emp_serv emp_agri deprat lwage time_numeric yhat2 yhat3, robust
test yhat2 yhat3

//Wooldridge test: serial correlation
xtabond retage educ emp_indus emp_manu emp_agri deprat lwage time_numeric, robust
net from http://www.stata-journal.com/software/sj3-2/
net describe st0039
net install st0039
xtserial retage educ emp_manu emp_serv emp_agri deprat lwage

//Breusch-Pagan test: heteroskedasticity
reg retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric
estat hettest educ emp_agri emp_serv emp_manu deprat lwage time_numeric

//Shapiro-Wilk: non-normality of errors
xtabond retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric, vce(robust)
swilk retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric

//Variance Inflation Factor: multicollinearity
reg lgdppc retage  govdebt lfpr depratio educ i.time_numeric, vce(robust)
vif
reg lgdppc retage depratio educ i.time_numeric, vce(robust)
vif
reg dlgdppc dretage  dgovdebt dlfpr ddepratio deduc i.time_numeric, vce(robust)
vif
reg dlgdppc dretage ddepratio deduc i.time_numeric, vce(robust)
vif
