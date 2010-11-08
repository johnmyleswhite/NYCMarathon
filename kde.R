library('ProjectTemplate')
load.project()

png(file.path('graphs', 'minutes_gender.png'))
ggplot(times, aes(x = Time, color = Gender, fill = Gender, group = Gender)) +
  geom_density() +
  facet_grid(Gender ~ .) +
  xlab('Total Time in Minutes') +
  ylab('Estimated Probability Density') +
  opts(title = 'Comparing Men and Women in the NYC Marathon')
dev.off()

png(file.path('graphs', 'hours_gender.png'))
ggplot(times, aes(x = Time / 60, color = Gender, fill = Gender, group = Gender)) +
  geom_density() +
  facet_grid(Gender ~ .) +
  xlab('Total Time in Hours') +
  ylab('Estimated Probability Density') +
  opts(title = 'Comparing Men and Women in the NYC Marathon')
dev.off()
