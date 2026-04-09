library(MPA)

expr_data <- data.frame(row.names = c("m1","m2","m3"),
                          condition = c(1.4,2,3),
                          control = c(3,4,5))
print("The metabolite level data is:")
print(expr_data)


reaction_data <- list(left = data.frame(row.names = c("m155","m20","m30"),
                                          coefficient = c(1,1,1)),
                        right = data.frame(row.names = c("m11","m12","m13"),
                                           coefficient = c(1,1,1)))
print("The reaction data is:")
print(reaction_data)

pathway_data <- list(reaction1 = reaction_data,
                       reaction2 = reaction_data)

print("The pathway data is:")
print(pathway_data)

pathway_score <- compute_pathway_score(expr_data, pathway_data)
print("The pathway score is:")
print(pathway_score)