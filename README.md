# Email-Mobile-phone-updates
R function for sending output notifications from r application to mobile phone &amp; email.

Skip to content
This repository
Search
Pull requests
Issues
Gist
 @Karthikds17
 Sign out
 Watch 0
  Star 0
  Fork 0 Karthikds17/Email-Mobile-phone-updates
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Graphs  Settings
Branch: master Find file Copy pathEmail-Mobile-phone-updates/123.R
df3d746  4 minutes ago
@Karthikds17 Karthikds17 Update 123.R
1 contributor
RawBlameHistory     
49 lines (35 sloc)  1.03 KB

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
}
  
### STEP-2 : Sending email of the above output ###

nstall.packages("mailR")
library(mailR)

 send.mail(from="praxisdev007@gmail.com",
          to="gourab@praxis.ac.in",
          subject="Email from R",
          body="Hi prof.Gourab, </br>
                This is a Test mail from R",
          html=T,
          smtp=list(host.name = "smtp.gmail.com",
                    port = 465,
                    user.name = "######@gmail.com",
                    passwd = "######",
                    ssl = T),
          authenticate = T,
          attach.files = ("E:/Python_script/log_file.log”)
          
### Integrating STEP-1 & STEP-2
          
          
          
          
          
          
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help
