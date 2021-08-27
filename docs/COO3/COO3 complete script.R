############################################
##                                        ##
## Code COO3 complete                     ##
## Find answers to questions with Q[no.]  ##
##                                        ##
############################################

# Introduction
class(DNase)
dim(DNase) # the first being the number of rows, the second being the number of columns
names(DNase)
head(DNase)
View(DNase) #view results in a separate window

help(DNase)

# Q1: 
class(mtcars)
# Q2:
dim(mtcars)
# Q3.
help(mtcars)
# The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel 
# consumption and 10 aspects of automobile design and performance for 32 automobiles 
# (1973–74 models).

# 2 Packages
install.packages("ggplot2") # put the package name between quotation marks
library("ggplot2")

# 3 Plotting basics
# 3.1 Scatterplot
# Q4:
mtcars$hp

plot(x = mtcars$mpg, y = mtcars$gear)

# Q5:
plot(x = mtcars$hp, y = mtcars$wt)

# Q6:
plot(x = mtcars)
# It has plotted all of the variables against eachother in separate panels.

# Q7:
# row 6, column 4

# Q8:
plot(x = mtcars$hp, type = "l")

# 3.2 Barplot
# Q9:
# cars is the categoric variable, weights is the numeric variable

#creating the dataframe again:
name <- c("Tom", "Nadia", "Anna", "Inge")
age <- c(24, 20, 21, 23)
relationship <- c(TRUE, FALSE, TRUE, TRUE)
people.df <- data.frame(name, age, relationship)

#plotting the ages of the people in a barplot:
barplot(height = people.df$age, names = people.df$name)

barplot(height = people.df)

# Q10:
barplot(height = mtcars$wt, names = rownames(mtcars))

# Q11:
barplot(height = mtcars[1:5,6], names = rownames(mtcars[1:5,]))
# Other solution:
barplot(mtcars[1:5,6], names = rownames(mtcars[1:5,]))


# 3.3 Histogram
hist(x = mtcars$wt)
# Q12:
# The interval is 0.5

# Q13: there are seven cars with a weight between 3.5 and 4 thousand lbs.

normal1 <- rnorm(1000)
hist(x = normal1)
hist(x = normal1, breaks = 50)

# Q14:
min(normal1)
max(normal1)

# Q15:
hist(x = normal1, breaks = seq(from = -6.5, to = 6.5, by = 0.5))

# Q16:
hist(x = normal1, breaks = seq(-4, 4, by = 0.25))
hist(x = normal1, breaks = 30)

# 3.4 Boxplot
boxplot(x = normal1)

normal2 <- rnorm(1000, mean = 3, sd = 1)
normal3 <- rnorm(1000, mean = 4, sd = 2)
normal4 <- rnorm(1000, mean = -2, sd = 0.5)
normal.matrix1 <- cbind(normal1, normal2, normal3, normal4) #cbind puts each vector in a column of a matrix
normal.list1 <- list(normal1, normal2, normal3, normal4)

# Q18:
boxplot(normal.matrix1)
boxplot(normal.list1)
# difference in the name of the boxes on the x-axis. Matrix uses vector names, list uses 
# list index name

normal5 <- rnorm(100, mean = 7, sd = 1.5)
normal6 <- rnorm(500, mean = 7, sd = 1.5)
normal7 <- rnorm(300, mean = 4, sd = 2)
normal.list2 <- list(normal5, normal6, normal7)
boxplot(normal.list2)

# Q19:
boxplot(mtcars)

#Q20:
boxplot(mtcars[,c(1:2,5:11)])
boxplot(mtcars[,c(3,4)])

#Q21:
boxplot(mtcars[,c(1:2,5:11)], horizontal = TRUE)
boxplot(mtcars[,c(3,4)], horizontal = TRUE)

# 3.5 Heatmap
# Q22:
matrix.mtcars <- as.matrix(mtcars)

# Q23:
heatmap(x = matrix.mtcars, scale = "none", Colv = NA, Rowv = NA)

# Q24:
heatmap(x = matrix.mtcars, scale = "column", Colv = NA, Rowv = NA)
heatmap(x = matrix.mtcars, scale = "row", Colv = NA, Rowv = NA)

# Q25:
heatmap(x = matrix.mtcars, scale = "column")

# Q26:
# two or maybe three. You can look at the dendrogram to determine the groups.

# Q27:
# two or four.

# Q28:
plot(x = mtcars$hp, y = mtcars$disp)

# Q29:
plot(x = mtcars$hp, y = mtcars$mpg)

# Q30:
plot(x = mtcars$hp, y = mtcars$cyl)

# Q31: It seems there are only 3 possible values.

# Q32
hist(x = mtcars$cyl)

# Q33: cylinder, vs, am, gear

# Q34:
boxplot(mtcars[,c(1:2,5:11)])
boxplot(mtcars[,c(3,10)])

# Q35:
unique(mtcars$cyl)
unique(mtcars$vs)
unique(mtcars$am)
unique(mtcars$gear)

# 4. Saving plots
# Q36: manual saving. File size depends on the plot.

# Q37:
## tiff("C:/folder1/folder2/myfilename.tiff")
## heatmap(matrix.mtcars, scale = "column")
## dev.off()
tiff("/cloud/project/plot1.tiff")
heatmap(matrix.mtcars, scale = "column")
dev.off()

# Q38:
## jpeg("C:/folder1/folder2/myfilename.jpeg")
## heatmap(matrix.mtcars, scale = "column")
## dev.off())
jpeg("/cloud/project/plot2.jpeg")
heatmap(matrix.mtcars, scale = "column")
dev.off()

# 5. Plotting customization
# Q39:
plot(x = mtcars$disp, y = mtcars$hp,
    xlim = c(0, 500),
    ylim = c(0, 400)
    )

# Q40:
plot(x = mtcars$disp, y = mtcars$hp,
    xlim = c(0, 500),
    ylim = c(0, 400),
    main = "My plot title",
    xlab = "My x-axis title",
    ylab = "My y-axis title"
    )

# Q41:
plot(x = mtcars$disp, y = mtcars$hp,
    xlim = c(0, 500),
    ylim = c(0, 400),
    main = "Mtcars dataset",
    xlab = "Displacement (cu.in.)",
    ylab = "Gross horsepower",
    pch = 8
    )

plot(x = mtcars$disp, y = mtcars$hp,
    xlim = c(0, 500),
    ylim = c(0, 400),
    main = "Mtcars dataset",
    xlab = "Displacement (cu.in.)",
    ylab = "Gross horsepower",
    pch = 8,
    cex = 2
    )

plot(x = mtcars$disp, y = mtcars$hp,
    xlim = c(0, 500),
    ylim = c(0, 400),
    main = "Mtcars dataset",
    xlab = "Displacement (cu.in.)",
    ylab = "Gross horsepower",
    pch = 8,
    cex = 2,
    col = "red"
    )

# Q42:
normal1 = rnorm(1000, mean = 1, sd = 2) #creates new vector with normally distributed numerics
normal2 = rnorm(1000, mean = 3, sd = 2)

hist(x = normal1, breaks = 50,
    col = rgb(red = 1, green = 0, blue = 0),
    xlim = c(-15, 15),
    ylim = c(0, 100)
    )

hist(x = normal2, breaks = 50,
    col = rgb(red = 0, green = 0, blue = 1),
    add = TRUE
    )

# Q43:
hist(x = normal1, breaks = 50, 
     col = rgb(1, 0, 0, 0.5),
     xlim = c(-15, 15),
     ylim = c(0, 100)
)

hist(x = normal2, breaks = 50, 
     col = rgb(0, 0, 1, 0.5), 
     add = TRUE
)

# Q44:
legend(x = "topleft", legend = c("normal1", "normal2"), 
       fill = c(rgb(1, 0, 0 , 0.5), rgb(0, 0, 1, 0.5)))

install.packages("RColorBrewer")
library(RColorBrewer)

heatmap(matrix.mtcars, scale = "column",
         col = brewer.pal(n = 9, name = "Blues"))

# Q45:
legend(x = "topleft", legend = c("low", "average", "high"),
      fill = colorRampPalette(brewer.pal(9,"Blues"))(3)
      )

# Q46:
mycolors <- colorRampPalette(colors = c("blue", "white", "red"))
mycolors(256)

# Q47:
heatmap(matrix.mtcars, scale = 'column',
        col = mycolors(256))

# Q48:
legend(x = "topleft", legend = c("low", "mid", "high"),
      fill = c(mycolors(256)[1], mycolors(256)[128], mycolors(256)[256]))

# Q49:
mycolors2 <- colorRampPalette(colors = c("dodgerblue3", "lemonchiffon2", "red4"))

heatmap(matrix.mtcars, scale = "column",
        col = mycolors2(128))

legend(x = "topleft", legend = c("low", "mid", "high"),
       fill = c(mycolors2(128)[1], mycolors2(128)[56], mycolors2(128)[128]))
