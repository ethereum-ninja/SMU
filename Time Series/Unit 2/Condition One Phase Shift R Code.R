

#dev.off()
set.seed(106)
num_realizations = 10
xs = seq(0,(2*pi),length = 100)

realization_holder = matrix(nrow = num_realizations,ncol = 100) # this holds all 100 time periods for the realizations

for( i in 1 : num_realizations)
{
  #phase_shift = pi
  phase_shift = runif(1,0,(2*pi))
  ys = sin(xs + phase_shift)
  realization_holder[i,] = ys
}

par(mfrow = c(2,1))


plot(realization_holder[1,])

for(k in 2:num_realizations)
{
  points(realization_holder[k,], col = "blue")
}

means_RH = colMeans(realization_holder)
plot(means_RH,ylim = c(-1,1))

