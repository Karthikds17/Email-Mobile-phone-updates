a = read.csv("Attrition.csv")
table(a$BusinessTravel,a$Department)

a= a[,c(3,5,8)]

?list
cri <- vector("list",20)
mat<-vector("matrix",20)

#just trying
output_array = vector("list",20)
for(i in 1:10){
  output_array[i] = diag(2)
}
replicate(10, diag(2), simplify=F)
?replicate

diag(2)


tab = function(x)
{
  vec = vector("list",100)
for (i in 1:ncol(x)) 
  {
  j = i+1
  while (j <= ncol(x)) 
    {
    if(i < j)
  #  as.matrix(table(x[,i],x[,j])))
      output[i,j] <- as.matrix(table(x[,i],x[,j]))
    
    j = j+1
  }
#  cri[[i]]<-mat[i]
}}

lapply(a,table)
tab(a)
a1 = a[ ,is.factor(a)]
k[paste(names(a[1]),names(a[2]),sep="+")]  = as.data.frame.matrix(table(a[,1],a[,2]))
list(rep(0,choose(4,2)))
cri[[1]] <- as.data.frame.matrix(table(a[,1],a[,2]))

cri <- vector("list",20)
#########################Working##################

tab = function(x,y)
{
  x=x[ ,y]
#  s = vector("list",choose(ncol(x),2)) 
  t = vector("list",choose(ncol(x),2))
  b = 1
  for (i in 1:ncol(x))
  {
    
    j = i+1
    while (j <= ncol(x))
    {
      if(i < j)
        
#      s[[b]] = as.data.frame.matrix(table(x[,i],x[,j]))
      t[[b]] = as.data.frame.matrix(prop.table(table(x[,i],x[,j])))
#      names(s[[b]]) = paste(names(x)[i],"vs",names(x)[j])
      b = b+1
      j = j+1
    }}
#  return(s)
  return(t)}

##############################################
tab(a,c(3,5,8))

tab = function(x,i,j){
  return(as.matrix(table(x[,i],x[,j])))
}
mat <- vector("list",20)       
for (i in 1:ncol(a)) 
    {
      j = i+1
      while (j <= ncol(a))
      {
        if(i < j)
          mat[paste(i,j)]<-tab(a,i,j)
          
          
       j = j+1
}}

          
          
          
          
          
          
          
          
tab(a)

lapply(a,FUN = tab)
