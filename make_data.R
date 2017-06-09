set.seed(71)

N <- 1000000
M <- 100

ProductId <- c(1:N)
ProductName <- stringi::stri_rand_strings(n = N, length = 5)
Price <- sample(1:10000, N, replace = T)
Date <- sample(seq(as.Date("2000/01/01"), as.Date("2016/12/31"), by = "day"), N, replace = T)

product <- data.frame(
  ProductID = ProductId,
  ProductName = ProductName,
  Price = Price,
  Date = Date
)

write.csv(product, file = "product.csv", quote = FALSE, row.names = FALSE)
write.table(product, file = 'product.tsv', quote = FALSE, sep = '\t', row.names = FALSE)
openxlsx::write.xlsx(product, file = "product.xlsx")


UserID <- sample(LETTERS, M, replace = TRUE)
ProductID <- sample(1:N, M)
SaleDate <- sample(seq(as.Date("2010/01/01"), as.Date("2016/12/31"), by = "day"), M, replace = T)

sales <- data.frame(
  UserID = UserID,
  ProductID = ProductID,
  SaleDate = SaleDate
)

write.csv(sales, file = "sales.csv", quote = FALSE, row.names = FALSE)
