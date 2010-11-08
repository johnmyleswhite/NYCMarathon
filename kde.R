library('ProjectTemplate')
load.project()

pdf(file.path('graphs', 'gender.pdf'))
ggplot(times, aes(x = Time, color = Gender, fill = Gender, group = Gender)) +
  geom_density() +
  facet_grid(Gender ~ .)
dev.off()
