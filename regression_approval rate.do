clear all
set more off, permanent
capture log close

cd"C:\Users\ll60\Desktop\project"
log using project_code, replace text
use "full_data.dta"

//Single Regressor (binary)
regress approve_estimate shutdown, robust

//Single Regressor (shutdowntime)
regress approve_estimate shutdowntime, robust

//Single Regressor (days_after_shutdown)
regress approve_estimate days_after_shutdown, robust

//Two Regressors (without days_after_shutdown)
regress approve_estimate shutdown shutdowntime, robust

//Two Regressors (without shutdowntime)
regress approve_estimate shutdown days_after_shutdown, robust

//Two Regressors (without shutdown)
regress approve_estimate shutdowntime days_after_shutdown, robust

//Multiple Regressors
regress approve_estimate shutdown shutdowntime days_after_shutdown
regress approve_estimate shutdown shutdowntime days_after_shutdown, robust

//Multiple Regressors
regress approve_estimate shutdown shutdowntime days_after_shutdown sp_500, robust
