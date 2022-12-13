

# age <- c(1,2,3,4.2,5.2,6.2,7.3,8,9,10,11,12,13,14,15,16,17,18)
# age <- c(1, 2, 3, 4.3 ,5.4 ,6.6 ,7.8 ,9.1 , 10.2 ,11.4 ,12.7,
#          13.9,15.0,16.2,17.3,18.3,19.3,20.7)
         
india = read.csv(file = "india.csv") 
cat("india")
print (ncol(india)) 
# Create as a matrix
edumat = as.matrix(india)
print("edumat");
indiaTotal = edumat[2:19,7:28]
print(indiaTotal)


# Take transpose as this is necessary for plotting bar charts
indiamat = t(indiaTotal)



#Create a vector of total Males & Females
totalM = indiamat[3,]
totalF = indiamat[4,]

#Create a vector of males & females attending education institution
eduM = indiamat[6,]
eduF = indiamat[7,]

#Calculate percent of males attending education of total
indiapercentM = round(as.numeric(eduM) *100/as.numeric(totalM),1)


#Calculate percent of females attending education of total
indiapercentF = round(as.numeric(eduF) *100/as.numeric(totalF),1)


## 0a - Education in Rural India

indiaruralmat = edumat[21:38,7:28]

# Take transpose as this is necessary for plotting bar charts
ruralmat = t(indiaruralmat)


#Create a vector of total Males & Females in Rural TN
totalruralM = ruralmat[3,]
totalruralF = ruralmat[4,]

#Create a vector of males & females attending education institution
edururalM = ruralmat[6,]
edururalF = ruralmat[7,]

#Calculate percent of rural males attending education of total
percentruralM = round(as.numeric(edururalM) *100/as.numeric(totalruralM),1)

## 0b - -----------------------------------------------------------------------
## 0a - Education in Urban India


indiaurbanmat = edumat[40:57,7:28]
# Take transpose as this is necessary for plotting bar charts
urbanmat = t(indiaurbanmat)

#Create a vector of total Males & Females in Urban India
totalurbanM = urbanmat[3,]
totalurbanF = urbanmat[4,]

#Create a vector of males & females attending education institution
eduurbanM = urbanmat[6,]
eduurbanF = urbanmat[7,]