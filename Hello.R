#Hello.R
drawsin <- function(type){
  x=1:100
  x=x/10
  y=sin(x)
  plot(x,y,type)
}

drawsin2 <- function(t,c){
  x=1:100
  x=x/10
  y=sin(x)
  plot(x,y,col = c, type = t)
}