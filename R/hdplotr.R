#' Lazy hd plotting
#'
#' @param x x-axle
#' @param y y-axle
#' @param xlab label
#' @param ylab label
#' @param main label
#' @param width size
#' @param height size
#' @param units unit
#' @param resolution quality
#' @param mfrow more pictures
#' @param name save as
#' @param format format
#' @param save To save, or not to save
#'
#' @return A picture.
#' @export
#'
#' @examples
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
                    save=FALSE){
  if (save){
    if (missing(name)) stop("Error: What is the name of your file?")
    else
      if (!format == "png") stop("I only work with png, sorry.")
    else
      name <- paste0(name,".png")
    png(name, width = width, height = height, units = units, res = resolution)
    par(mfrow=mfrow)
    plot(x=x,y=y,ylab=ylab,xlab=xlab,main=main)
    dev.off()}
  else plot(x=x,y=y,ylab=ylab,xlab=xlab,main=main)
}
