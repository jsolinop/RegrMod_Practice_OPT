
str(college)
summary(college)
boxplot(median ~ major_category, data = college)
boxplot(p25th ~ major_category, data = college)
boxplot(p75th ~ major_category, data = college)

fit_median <- lm(
        median ~ major_category + perc_men + perc_employed + perc_college_jobs + perc_low_wage_jobs,
        data = college
)
sum_fit_median <- summary(fit_median)
sum_fit_median
sum_fit_median$coefficients
sum_fit_median$fstatistic
par(mfrow = c(2,2))
plot(fit_median)

fit_p25th <- lm(
        p25th ~ major_category + perc_men + perc_employed + perc_college_jobs + perc_low_wage_jobs,
        data = college
)
sum_fit_p25th <- summary(fit_p25th)
sum_fit_p25th
par(mfrow = c(2,2))
plot(fit_median)

fit_p75th <- lm(
        p75th ~ major_category + perc_men + perc_employed + perc_college_jobs + perc_low_wage_jobs,
        data = college
)
sum_fit_p75th <- summary(fit_p75th)
sum_fit_p75th
par(mfrow = c(2,2))
plot(fit_median)
