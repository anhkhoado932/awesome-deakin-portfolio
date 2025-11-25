library(MASS)
.set.seed(223188874)

#T1.
##read data
the.data <- as.matrix(read.table("ENB.txt"))
the.data
colnames(the.data) <- c('Index', 'X1', 'X2', 'X3', 'X4', 'X5', 'Y')
the.data <- subset(the.data, select = -Index)
summary(the.data)

##sampling
num_rows <- 450
num_cols <- ncol(the.data)
num_samples <- nrow(the.data)
my.data <- the.data[sample(1:num_samples,num_rows),c(1:num_cols)]
             
##scatterplot       
for(i in c('X1', 'X2', 'X3','X4', 'X5')){
  plot(my.data[, i], my.data[,'Y'],
       xlab = i,
       ylab = "Y", 
       main = sprintf("Scatter Plot of %s and Y", i))
}
##correlation coefficients
correlations <- numeric(5)
for (i in 1:5) {
  correlations[i] <- cor(my.data[, i], my.data[, 'Y']) 
}
print(correlations)
# Comment: from the visualization as well as the correlation coefficients, we can see that there is no significant correlation between any variable with regards to Y


##histograms
for(i in colnames(my.data)){
  hist(my.data[, i],
       xlab = i,
       main = sprintf("Histogram Plot of %s", i))
}

#T2
## Comment: I will select X1, X2, X3, X4 since it has higher correlation with Y, which may imply better information
transformed.data <- subset(my.data, select=-X5)

# Firstly, we address the skewness of each variable.
# From the histogram, X1, X3, X4, Y is right-skewed, while X2 is left-skewed
# For positively skewed data, we use log transformation
# For negatively skewed data, we used squared transformation
transformed.data[, 'X1'] <- log(transformed.data[, 'X1'])
transformed.data[, 'X2'] <- transformed.data[, 'X2']**2
transformed.data[, 'X3'] <- log(transformed.data[,'X3'])
transformed.data[, 'X4'] <- log(transformed.data[, 'X4'])
transformed.data[, 'Y'] <- log(transformed.data[, 'Y'])


for(i in colnames(transformed.data)){
  hist(transformed.data[, i],
       xlab = i,
       main = sprintf("Histogram Plot of %s after transformation", i))
}


# Next, I use Min-Max transformation to adjust the scale to [0, 1]
minmax <- function(x){
  (x - min(x))/(max(x)-min(x))
}

scaled.data <- transformed.data
scaled.data[, 'X1'] <- minmax(transformed.data[, 'X1'])
scaled.data[, 'X2'] <- minmax(transformed.data[, 'X2'])
scaled.data[, 'X3'] <- minmax(transformed.data[, 'X3'])
scaled.data[, 'X4'] <- minmax(transformed.data[, 'X4'])
scaled.data[, 'Y'] <- minmax(transformed.data[, 'Y'])

for(i in colnames(scaled.data)){
  hist(scaled.data[, i],
       xlab = i,
       main = sprintf("Histogram Plot of %s after scaling", i))
}

summary(scaled.data)

# now we calculate the correlation between variables and Y
correlations <- numeric(4)
for (i in 1:4) {
  correlations[i] <- cor(scaled.data[, i], scaled.data[, 'Y']) 
}
correlations

# Since X2 and X4 exhibit negative correlation, we use negation.
scaled.data[, 'X2'] <- 1 - scaled.data[, 'X2']
scaled.data[, 'X4'] <- 1 - scaled.data[, 'X4']

write.table(scaled.data, "AnhKhoaDo-transformed.txt")

# build models and investigate the importance of each variable. 
source("AggWaFit718.R") 

# WAM
fit.QAM(scaled.data,"WAMoutput.txt","WAMstats.txt")

# Weighted power means (WPM) with p = 0.5 
fit.QAM(scaled.data, "QAM05output.txt", "QAM_05_stats.txt", g=PM05,g.inv = invPM05)

# Weighted power means (WPM) with p = 2
fit.QAM(scaled.data,"QM2output.txt", "QM2stats.txt",g= QM,g.inv = invQM)

# An ordered weighted averaging function (OWA). 
fit.OWA(scaled.data,"OWAoutput.txt","OWAstats.txt")


# T4. Use your model for prediction
# Choose OWA as it has a lowest RMSE and Abs Avg. Score
weights <- c(
  0.688065791046852,
  0.0684175525755459,
  0.243516656377602,
  0
)

Xpred <- c(19.1, 43.29, 19.7, 43.4)
Ytrue <- 60

# Follow transformation, min-max scaling, and negation similar to T2
Xpred[1] <- log(Xpred[1])
Xpred[2] <- Xpred[2]**2
Xpred[3] <- log(Xpred[3])
Xpred[4] <- log(Xpred[4])

for(i in 1:4) {
  Xpred[i] <- (Xpred[i]-min(transformed.data[,i]))/(max(transformed.data[,i])-min(transformed.data[,i]))
}
Xpred[2] <- 1 - Xpred[2]
Xpred[4] <- 1 - Xpred[4]

Ypred <- OWA(Xpred,weights)

# reverse transform predicted Y
Ypred <- min(transformed.data[,5]) + (max(transformed.data[,5]) - min(transformed.data[,5])) * Ypred 
Ypred <- exp(Ypred) 

absolute_err <- abs(Ytrue - Ypred) 
absolute_err
"
References
[1] Luis M. Candanedo, Veronique Feldheim, and Dominique Deramaix (2017). Data driven prediction models of energy use of appliances in a low-energy house. Energy and Buildings, 140, p.81-97.
[2] Venables WN and Ripley BD (2002). Modern Applied Statistics with S, Fourth edition. Springer, New York, https://www.stats.ox.ac.uk/pub/MASS4/.
[3] Gábor Csárdi and Michel Berkelaar (2024). lpSolve, https://cran.r-project.org/web/packages/lpSolve/index.html
"