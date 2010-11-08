library('ProjectTemplate')
load.project()

men.times <- with(subset(times, Gender == 'Male'), Time)
women.times <- with(subset(times, Gender == 'Female'), Time)

t.test(men.times, women.times)
wilcox.test(men.times, women.times)
