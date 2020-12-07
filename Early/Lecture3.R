for (i in 1:10) {
  print(i)
}

i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}

i <- 2
if (i == 1) {
  print("Hello World!")
} else {
  print("Goodbye World!")
}

feelings <- c("sad", "afraid")
for (i in feelings) {
  print(
    switch(i,
      happy = "I am glad you are happy",
      afraid = "There is nothing to fear",
      sad = "Cheer up",
      angry = "Calm down now"
    )
  )
}





myfunction <- function(x, a, b, c) {
  return(a * sin(x)^2 - b * x + c)
}
# curve可以画函数
curve(sin(x), xlim = c(1, 50))
curve(myfunction(x, 20, 3, 4), xlim = c(1, 50))

myfeeling <- function(x) {
  for (i in x) {
    print(
      switch(i,
        happy = "I am glad you are happy",
        afraid = "There is nothing to fear",
        sad = "Cheer up",
        angry = "Calm down now"
      )
    )
  }
}
feelings <- c("sad", "afraid")
myfeeling(feelings)