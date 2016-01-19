#simple_forecast.R
ynby_open = `000538.SZ`[,1]
ynby_mon = to.monthly(ynby_open)
ynby_season = ts(ynby_mon[,1], frequency = 12,start = c(2007,1))
y1 = meanf(ynby_season,h=12)
y2 = naive(ynby_season,h=12)
y3 =snaive(ynby_season,h=12)
y4 =   rwf(ynby_season,h=12,drift = TRUE)
plot(y1,plot.conf=FALSE,col=1, main="Comparison of several simple forecast methods")
lines(y2$mean,col=2)
lines(y3$mean,col=3)
lines(y4$mean,col=6)
legend("topleft",lty = 1,col = c(1,2,3,6),legend = c("Mean method","Naive","Seasonal","Drift"))
