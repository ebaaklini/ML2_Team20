# Dissimilarity matrix
d <- dist(USArrests, method = "euclidean")

# Hierarchical clustering using Complete Linkage
hc <- hclust(d, method = "complete")

# Plot the obtained dendrogram
plot(hc)

cutree(hc, 3)

d.sc <- dist(scale(USArrests), method = "euclidean")
hc.sc <- hclust(d.sc, method = "complete")
plot(hc.sc)

#before applying Hierarchical Clustering, 
#we have to normalize the data so that the scale of each variable is the same. 
#Why is this important? 
#If the scale of the variables is not the same, 
#the model might become biased towards the variables with a higher magnitude