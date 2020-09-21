hdplotr <- function(width,height,units,resolution,x,y,mfrow,name,format){
  if (format == "png"){
    name <- paste0(name,".png")
    png(name, width = width, height = height, units = units, res = resolution)
    par(mfrow=mfrow)
    plot(x=x,y=y)
    dev.off()}
  else print("Fan byt format (funkar bara med png")}
