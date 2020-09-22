hdplotr <- function(x,
                    y,
                    xlab="x",
                    ylab="y",
                    main=NULL,
                    width=5,
                    height=3.5,
                    units="in",
                    resolution=250,
                    mfrow=c(1,1),
                    name,
                    format="png",
                    save=FALSE,){
  if (save){
    if (missing(name)) stop("Error: What is the name of your file?")
    else
      if (!format == "png") stop("I only work with png, sorry.")
    else
      name <- paste0(name,".png")
    plot.new()
    png(name, width = width, height = height, units = units, res = resolution)
    par(mfrow=mfrow)
    plot(x=x,y=y,ylab=ylab,xlab=xlab,main=main)
    dev.off()}
  else plot(x=x,y=y,ylab=ylab,xlab=xlab,main=main)
}
