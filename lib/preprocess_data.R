men$Gender <- rep('Male', nrow(men))
women$Gender <- rep('Female', nrow(men))

times <- rbind(men, women)

times <- transform(times, Time = sapply(Time, numericize))
