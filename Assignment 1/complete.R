complete <- function(directory, id = 1:332){
        directory <- paste(getwd(), "/", directory, "/", sep = "")
        file_list <- list.files(directory)
        
        data <- data.frame(matrix(ncol = 2, nrow = 0))
        for (i in id){
                file_dir <- paste(directory, file_list[i], sep = "")
                file_data <- read.csv(file_dir)
                counter <- 0
                for (i in file_data){
                        if (!is.na(file_data[i])){
                                counter <- counter + 1
                        }
                }
                data <- rbind(data, counter)
        }
        colnames(data) <- c('id', 'nobs')
        data
}