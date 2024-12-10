clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/F3-oecd-data-wages.csv", delimiter(",")

rename value wage

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/F3-oecd-data-wages final.csv", replace

clear

//DATA PREPARATION - MERGING. Below I merge several datasets for OECD countries 

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/ret_age_M.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/ret_age_M.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/ret_age_M.dta"
merge 1:1 country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/F3-oecd-data-wages final.dta"

drop _merge

egen time_numeric = group(time)

label variable country "country name"

label variable time "year"

rename ret_age_m retage_m

label variable retage_m "effective retirement age male"

label variable time_numeric "numerical time"

label variable wage "real wage USD PPP 2022"

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged1.dta", replace

clear

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged1.dta"
merge 1:1 country time_numeric using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/ret_age_F.dta"

label variable ret_age_f "effective retirement age female"

rename ret_age_f retage_f

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged2.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop15-64.csv", delimiter(",")

egen time_numeric = group(time)

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop15-64.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged2.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop15-64.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged3.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop65+.csv", delimiter(",")

egen time_numeric = group(time)

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop65+.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged3.dta", clear

merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/pop65+.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged4.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/educ.csv", delimiter(",")

egen time_numeric = group(time)

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/educ.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged4.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/educ.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged5.dta", replace

// 

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/productivity.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/productivity.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged5.dta"
merge m:m country time using "//Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/productivity.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged6.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/govdebt.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/govdebt.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged6.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/govdebt.dta"

rename govtdebt govdebt

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged7.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr5564.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr5564.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged7.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr5564.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged8.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr6569.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr6569.dta", replace

use "//Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged8.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr6569.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged9.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr7074.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr7074.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged9.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr7074.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged10.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/gdppc.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/gdppc.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged10.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/gdppc.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged11.dta", replace

clear

import delimited "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr.csv", delimiter(",")

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr.dta", replace

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged11.dta"
merge m:m country time using "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged/lfpr.dta"

drop _merge

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", replace

//DATA PREPARATION - VARIABLES. Now I generate new variables to use in regressions, add labels, drop some countries/regions that were beyond my scope, and rename some variables

generate depratio = pop65 / pop1564

generate retage = (retage_m + retage_f) / 2

label variable retage "Average effective retirement age"

label variable depratio "Dependency ratio"

label variable wage "Average real wage USD PPP 2022"

label variable time "Year"

rename gdpperhourworked prod

drop if country == "OECD countries"

drop if country == "South Africa"

drop if country == "Russia"

drop country_id

egen country_id = group(country)

xtset country_id time

gen lwage = ln(wage)

gen lgdppc = ln(gdppc)

gen lprod = ln(prod)

//preparation for first difference:
by country_id: gen dlwage = lwage[_n]-lwage[_n-1]
by country_id: gen dlgdppc = lgdppc[_n]-lgdppc[_n-1]
by country_id: gen ddepratio = depratio[_n]-depratio[_n-1]
by country_id: gen dretage = retage[_n]-retage[_n-1]
by country_id: gen deduc = educ[_n]-educ[_n-1]
by country_id: gen dprod = prod[_n]-prod[_n-1]
by country_id: gen dlprod = lprod[_n]-lprod[_n-1]
by country_id: gen dgovdebt = govdebt[_n]-govdebt[_n-1]
by country_id: gen dlfpr5564 = lfpr5564[_n]-lfpr5564[_n-1]
by country_id: gen dlfpr6569 = lfpr6569[_n]-lfpr6569[_n-1]
by country_id: gen dlfpr7074 = lfpr7074[_n]-lfpr7074[_n-1]
by country_id: gen dlfpr = lfpr[_n]-lfpr[_n-1]

sort country_id time

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", replace

clear

//DATA ANALYSIS. Here I run my regressions measuring association between age of retirement and GDP pc, including some joint significance tests. See Section 4 of the writing sample for details

use "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", clear

eststo clear 

reg lgdppc depratio retage lfpr govdebt educ i.time_numeric, vce(robust) //POOLED with dummies for time, issue: fixed country characteristics

eststo

reg dlgdppc ddepratio dretage dlfpr dgovdebt deduc i.time_numeric, vce(robust) //FD, issue: strict exogeneity

test dretage ddepratio //jointly insignificant

eststo

xtreg lgdppc depratio retage lfpr govdebt educ i.time_numeric, fe vce(robust) //FE, issue: strict exogeneity

test retage depratio //jointly insignificant

eststo 

xtabond lgdppc depratio retage lfpr govdebt educ time_numeric, robust //Arellano-Bond method

test retage depratio //jointly insignificant

eststo

esttab

//below I omit govdebt and lfpr 

eststo clear 

reg lgdppc depratio retage educ i.time_numeric, vce(robust) //POOLED with dummies for time, issue: fixed country characteristics

eststo

reg dlgdppc ddepratio dretage deduc i.time_numeric, vce(robust) //FD, issue: strict exogeneity

//both insignificant on their own

test dretage ddepratio //p=0.0542, so jointly significant

eststo

xtreg lgdppc depratio retage educ i.time_numeric, fe vce(robust) //FE, issue: strict exogeneity

//now retage is significant 

test retage depratio //not jointly insignificant - p = 0.0534

eststo 

xtabond lgdppc depratio retage educ time_numeric, robust //Arellano-Bond method

//now depratio is significant

test retage depratio //jointly insignificant

eststo

esttab

save "/Users/lenawisniewska/Desktop/Year 2/Metrics/project/data/in stata/merged12.dta", replace

clear

//then I want to study determinants of effective retirement age and labour force participation of older workers. See Section 5 of writing sample. I create the matrix that is shown in section 5 by running regressions where I omit one sector in turn to avoid perfect collinearity

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

//ROBUSTNESS CHECKS. Finally, I run diagnostic tests. See Section 6 of writing sample

//Ramsey RESET:

eststo clear 

xtabond retage educ emp_manu emp_serv emp_agri deprat lwage time_numeric, robust //omit indus

predict yhat

gen yhat2 = yhat^2

gen yhat3 = yhat^3

xtabond retage educ emp_manu emp_serv emp_agri deprat lwage time_numeric yhat2 yhat3, robust //omit indus

test yhat2 yhat3

//serial correlation test - Wooldridge test:

xtabond retage educ emp_indus emp_manu emp_agri deprat lwage time_numeric, robust //omit indus

net from http://www.stata-journal.com/software/sj3-2/
net describe st0039
net install st0039

xtserial retage educ emp_manu emp_serv emp_agri deprat lwage

//heteroskedasticity - Breusch-Pagan test:

reg retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric //omit indus

estat hettest educ emp_agri emp_serv emp_manu deprat lwage time_numeric

//non-normality of errors - Shapiro-Wilk:

xtabond retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric, vce(robust) //omit indus

swilk retage educ emp_agri emp_serv emp_manu deprat lwage time_numeric

//multicollinearity - Variance Inflation Factor

reg lgdppc retage  govdebt lfpr depratio educ i.time_numeric, vce(robust)

vif

reg lgdppc retage depratio educ i.time_numeric, vce(robust)

vif

reg dlgdppc dretage  dgovdebt dlfpr ddepratio deduc i.time_numeric, vce(robust)

vif

reg dlgdppc dretage ddepratio deduc i.time_numeric, vce(robust)

vif
