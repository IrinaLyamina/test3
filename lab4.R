lab4 <- function(){
setwd("S:/DirLyamina")

e1 <- new.env(parent = baseenv())
assign("x", 
       c(read.table("txt.txt", sep = ",", header = FALSE)), 
       envir = e1 
)

e2 <- new.env(parent = baseenv())  
assign("x", 
       c(read.table("2.txt", sep = ",", header = FALSE)), 
       envir = e2 
)
       
e3 <- new.env(parent = baseenv())  
assign("x", 
       c(read.table("3.txt", sep = ",", header = FALSE)), 
       envir = e3 
)   

e4 <- new.env(parent = baseenv())  
assign("x", 
       c(read.table("4.txt", sep = ",", header = FALSE)), 
       envir = e4 
)

e5 <- new.env(parent = baseenv())  
assign("x", 
       c(read.table("5.txt", sep = ",", header = FALSE)), 
       envir = e5 
)

g1 <- function(x) return(x*2)
g2 <- function(x) return(x^4)
g3 <- function(x) return(sin(x))
g4 <- function(x) return(cos(x))
g5 <- function(x) return(tan(x))

plot(c(0,0), c(0,0)) # подготовить график, задать диапазоны X, Y ranges
for (f in c(g1, g2, g3, g4, g5)) plot(f, 0,1, add=T)

df <- data.frame(
        rbind(get("x", envir = e1),
        get("x", envir = e2),
        get("x", envir = e3),
        get("x", envir = e4),
        get("x", envir = e5))
)
df
}
