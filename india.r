
# Statistical learning with R 
# A peek into India Literacy
# --------------------------------------------------------------------------------------------------------------------------------------

# Set the age vector
#age <- c(2,5,6,7,8,9,10,11,12,13,14,17,22,27,32,37, 62, 70)
age <- c(1,2,3,4.2,5.2,6.2,7.3,8,9,10,11,12,13,14,15,16,17,18)

# Data included for the following states
# 1. Tamil Nadu      2. Uttar Pradhesh   3. Bihar     4. Kerala  5. Andhra Pradhesh
# 6. Arunachal Pradhesh  7. Assam  8. Chattisgarh 9. Gujarat 10.  11. Himachal Pradesh
# 12. Jammu and Kashmir 13. Jharkhand 14. Karnataka 15. Madhya Pradesh 16. Maharashta
# 17. Odisha 18. Punjab  19. Rajashthan 20. Uttarkhand 21. West Bengal
#
## 0.-------------------------------------------------------------------------------------------
#age <- c(1,2,3,4.2,5.2,6.2,7.3,8,9,10,11,12,13,14,15,16,17,18)

# Age set to be centered around the bars in th ebar plot.
age <- c(1, 2, 3, 4.3 ,5.4 ,6.6 ,7.8 ,9.1 , 10.2 ,11.4 ,12.7,
         13.9,15.0,16.2,17.3,18.3,19.3,20.7)
# Read the overal India literacy related data 
india = read.csv("./dataset/india.csv") 

# Create as a matrix
edumat = as.matrix(india)

indiaTotal = edumat[2:19,7:28]


# Take transpose as this is necessary for plotting bar charts
indiamat = t(indiaTotal)

# Set the scipen option to format the y axis (otherwise prints as e^05 etc.)
getOption("scipen")
opt <- options("scipen" = 20)
getOption("scipen")



#Create a vector of total Males & Females
totalM = indiamat[3,]
totalF = indiamat[4,]

#Create a vector of males & females attending education institution
eduM = indiamat[6,]
eduF = indiamat[7,]

#Calculate percent of males attending education of total
indiapercentM = round(as.numeric(eduM) *100/as.numeric(totalM),1)

barplot(indiapercentM,names.arg=indiamat[1,],main ="Percentage males attending educational institutions in India ", 
        xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Males")) 
points(age,indiapercentM,pch=15)
lines(age,indiapercentM,col="red",pch=20,lty=2,lwd=3)
legend( x="bottomright", 
        legend=c("National average"),
        col=c("red"), bty="n" , lwd=1, lty=c(2), 
        pch=c(15) )

#Calculate percent of females attending education of total
indiapercentF = round(as.numeric(eduF) *100/as.numeric(totalF),1)

barplot(indiapercentF,names.arg=indiamat[1,],main ="Percentage females attending educational institutions in India ", 
        xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Females"))
points(age,indiapercentF,pch=15)
lines(age,indiapercentF,col="red",pch=20,lty=2,lwd=3)
legend( x="bottomright", 
        legend=c("National average"),
        col=c("red"), bty="n" , lwd=1, lty=c(2), 
        pch=c(15) )

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

barplot(percentruralM,names.arg=ruralmat[1,],main ="Percentage males attending educational institutions in rural India ", 
        xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Males")) 
points(age,indiapercentM,pch=15)
lines(age,indiapercentM,col="red",pch=20,lty=2,lwd=3)
legend( x="bottomright", 
        legend=c("National average"),
        col=c("red"), bty="n" , lwd=1, lty=c(2), 
        pch=c(15) )

#Calculate percent of rural females attending education of total
percentruralF = round(as.numeric(edururalF) *100/as.numeric(totalruralF),1)

barplot(percentruralF,names.arg=ruralmat[1,],main ="Percentage females attending educational institutions in rural India ", 
        xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Females"))
points(age,indiapercentF,pch=15)
lines(age,indiapercentF,col="red",pch=20,lty=2,lwd=3)
legend( x="bottomright", 
        legend=c("National average"),
        col=c("red"), bty="n" , lwd=1, lty=c(2), 
        pch=c(15) )

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

#Calculate percent of urban males attending education of total
percenturbanM = round(as.numeric(eduurbanM) *100/as.numeric(totalurbanM),1)

barplot(percenturbanM,names.arg=urbanmat[1,],main ="Percentage males attending educational institutions in urban India ", 
        xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Males")) 
points(age,indiapercentM,pch=15)
lines(age,indiapercentM,col="red",pch=20,lty=2,lwd=3)
legend( x="bottomright", 
        legend=c("National average"),
        col=c("red"), bty="n" , lwd=1, lty=c(2), 
        pch=c(15) )
        
#Calculate percent of urban females attending education of total
percenturbanF = round(as.numeric(eduurbanF) *100/as.numeric(totalurbanF),1)
        
barplot(percenturbanF,names.arg=urbanmat[1,],main ="Percentage females attending educational institutions in urban India ", 
                xlab = "Age", ylab= "Percentage", col ="lightblue", legend= c("Females"))
        points(age,indiapercentF,pch=15)
        lines(age,indiapercentF,col="red",pch=20,lty=2,lwd=3)
        legend( x="bottomright", 
                legend=c("National average"),
                col=c("red"), bty="n" , lwd=1, lty=c(2), 
                pch=c(15) )

                percenturbanF