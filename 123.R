
#### STEP-1 : Creating bivariate tables for categorical variables #####

tab = function(x,y)
{
  x=x[ ,y]
  t = vector("list",choose(ncol(x),2))
  b = 1
  for (i in 1:ncol(x))
  {
    j = i+1
    while (j <= ncol(x))
    {
      if(i < j)
      t[[b]] = as.data.frame.matrix(prop.table(table(x[,i],x[,j])))
      b = b+1
      j = j+1
    }}
return(t)
}}}

          
          
          
          
          
          
          

