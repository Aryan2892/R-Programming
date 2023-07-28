hi <- "hi"
is.vector(hi)

vec1 <- 3:9
vec1
is.vector(vec1)

vec2 <- seq(1,9, by = 2)
vec2
is.vector(vec2)

vec3 <- c(3,4,5,10)
vec3
is.vector(vec3)

vec4 <- c(3,"hi",3)
vec4
is.vector(vec4)

vec5 <- c(0,TRUE, FALSE ,10)
vec5
is.vector(vec5)

vec6 <- c(TRUE,"hi",FALSE,1,4.544)
vec6
is.vector(vec6)
