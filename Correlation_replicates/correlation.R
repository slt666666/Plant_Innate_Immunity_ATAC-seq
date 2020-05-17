library(ggplot2)

# make function to visualize plot
ggplotRegression <- function (title, fit) {
  ggplot(fit$model, aes_string(x = names(fit$model)[2], y = names(fit$model)[1])) + 
    geom_point() +
    stat_smooth(method = "lm", col = "red") +
    labs(title = paste(title, " Adj R2 = ",signif(summary(fit)$adj.r.squared, 5)), x = "rep1 log2 reads", y = "rep2 log2 reads")
}

# input_data
input1 <- "rep1_readcount.txt"
input2 <- "rep2_readcount.txt"
rep1 <- read.table(input1)
rep2 <- read.table(input2)
colnames(rep1) <- c("chr", "start", "end", "read_count", "coverage", "length", "fraction")
colnames(rep2) <- c("chr", "start", "end", "read_count", "coverage", "length", "fraction")

# draw correlation plot
reps <- data.frame(rep1 = log2(rep1$read_count), rep2 = log2(rep2$read_count))
fit <- lm(rep2 ~ rep1, data = reps)
ggplotRegression("title", fit)