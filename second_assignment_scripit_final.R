The script for the 2-nd assignment

```{r}
predictionTesting <- predict(rfFit, workoutTesting)
workoutTestingN <- workoutTesting
workoutTestingN$classe <- predictionTesting

pml_write_files = function(x) {
        n = length(x)
        for (i in 1:n) {
                filename = paste0("problem_id_", i, ".txt")
                write.table(x[i], file = filename, quote = FALSE, row.names = FALSE, 
                            col.names = FALSE)
        }
}
answers <- workoutTestingN$classe

pml_write_files(answers)
```