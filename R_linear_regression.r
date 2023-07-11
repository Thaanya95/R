filename = "regrex1.csv"

dataset = read.csv(filename)
dataset

model = lm(formula = y ~ x,
               data = dataset)

library(ggplot2)

png("R_Scatter_plot.png")
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  ggtitle('Linear model of y vs x') +
  xlab('x') +
  ylab('y')
dev.off()

png("R_Combined_plot.png")
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Linear model of y vs x') +
  xlab('x') +
  ylab('y')
dev.off()




