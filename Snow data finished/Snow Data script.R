library(rvest)
#------------------------------
# summit page 1 dates  2/25/19 - 128/19
url_summit<- 'https://mountwashingtonavalanchecenter.org/weather-avalanche-log/'
summit <- read_html(url_summit)
summit_table <- html_table(summit)

head(summit_table)
summit_data <- as.data.frame(summit_table)
#if prints proper table, edit rows to be numrical values with gsub()
summit_data[,2] <- gsub("F","", summit_data[,2])
summit_data[,3] <- gsub("F","", summit_data[,3])
summit_data[,4] <- gsub("in","", summit_data[,4])
summit_data[,5] <- gsub("in","", summit_data[,5])
summit_data[,6] <- gsub("MPH","", summit_data[,6])
summit_data[,7] <- gsub("MPH","", summit_data[,7])
#----------------------------------------------------
# WIND
summit_data[,8] <- gsub("[(N) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(NNE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(NE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(E) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(ENE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(ESE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(SE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(SSE) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(S) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(SSW) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(SW) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(WSW) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(W) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(WNW) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(NW) ]","", summit_data[,8])
summit_data[,8] <- gsub("[(NNW) ]","", summit_data[,8])
#removing observation column
summit_data <- summit_data[,-(9), drop = FALSE]

#changing column 1 to dates
summit_data[,1] <- as.Date(summit_data[,1], "%m/%d/%y")
#defining as numeric
summit_data[,2] <- as.numeric(summit_data[,2])
summit_data[,3] <- as.numeric(summit_data[,3])
summit_data[,4] <- as.numeric(summit_data[,4])
summit_data[,5] <- as.numeric(summit_data[,5])
summit_data[,6] <- as.numeric(summit_data[,6])
summit_data[,7] <- as.numeric(summit_data[,7])
summit_data[,8] <- as.numeric(summit_data[,8])
#------------------------------------------------------
#summit page 2 dates 1/27/19 - 12/29/18
url_summit2<- 'https://mountwashingtonavalanchecenter.org/weather-avalanche-log/?frm-page-12667=2'
summit2 <- read_html(url_summit2)
summit_table2 <- html_table(summit2)

head(summit_table2)
summit_data2 <- as.data.frame(summit_table2)
#if prints proper table, edit rows to be numrical values with gsub()
summit_data2[,2] <- gsub("F","", summit_data2[,2])
summit_data2[,3] <- gsub("F","", summit_data2[,3])
summit_data2[,4] <- gsub("in","", summit_data2[,4])
summit_data2[,5] <- gsub("in","", summit_data2[,5])
summit_data2[,6] <- gsub("MPH","", summit_data2[,6])
summit_data2[,7] <- gsub("MPH","", summit_data2[,7])
#----------------------------------------------------
# WIND
summit_data2[,8] <- gsub("[(N) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(NNE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(NE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(E) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(ENE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(ESE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(SE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(SSE) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(S) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(SSW) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(SW) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(WSW) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(W) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(WNW) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(NW) ]","", summit_data2[,8])
summit_data2[,8] <- gsub("[(NNW) ]","", summit_data2[,8])
#------------------------------------------------------
#removing observation column
summit_data2 <- summit_data2[,-(9), drop = FALSE]

#changing column 1 to dates
summit_data2[,1] <- as.Date(summit_data2[,1], "%m/%d/%y")

#defining as numeric
summit_data2[,2] <- as.numeric(summit_data2[,2])
summit_data2[,3] <- as.numeric(summit_data2[,3])
summit_data2[,4] <- as.numeric(summit_data2[,4])
summit_data2[,5] <- as.numeric(summit_data2[,5])
summit_data2[,6] <- as.numeric(summit_data2[,6])
summit_data2[,7] <- as.numeric(summit_data2[,7])
summit_data2[,8] <- as.numeric(summit_data2[,8])
#------------------------------------------------------
#summit page 3 dates 12/28/18 - 11/28/18
url_summit3<- 'https://mountwashingtonavalanchecenter.org/weather-avalanche-log/?frm-page-12667=3'
summit3 <- read_html(url_summit3)
summit_table3 <- html_table(summit3)

head(summit_table3)
summit_data3 <- as.data.frame(summit_table3)
#if prints proper table, edit rows to be numrical values with gsub()
summit_data3[,2] <- gsub("F","", summit_data3[,2])
summit_data3[,3] <- gsub("F","", summit_data3[,3])
summit_data3[,4] <- gsub("in","", summit_data3[,4])
summit_data3[,5] <- gsub("in","", summit_data3[,5])
summit_data3[,6] <- gsub("MPH","", summit_data3[,6])
summit_data3[,7] <- gsub("MPH","", summit_data3[,7])
#----------------------------------------------------
# WIND
summit_data3[,8] <- gsub("[(N) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(NNE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(NE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(E) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(ENE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(ESE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(SE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(SSE) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(S) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(SSW) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(SW) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(WSW) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(W) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(WNW) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(NW) ]","", summit_data3[,8])
summit_data3[,8] <- gsub("[(NNW) ]","", summit_data3[,8])
#removing obs column
summit_data3 <- summit_data3[,-(9), drop = FALSE]

#changing column 1 to dates
summit_data3[,1] <- as.Date(summit_data3[,1], "%m/%d/%y")

#defining as numeric
summit_data3[,2] <- as.numeric(summit_data3[,2])
summit_data3[,3] <- as.numeric(summit_data3[,3])
summit_data3[,4] <- as.numeric(summit_data3[,4])
summit_data3[,5] <- as.numeric(summit_data3[,5])
summit_data3[,6] <- as.numeric(summit_data3[,6])
summit_data3[,7] <- as.numeric(summit_data3[,7])
summit_data3[,8] <- as.numeric(summit_data3[,8])
#------------------------------------------------------
#summt page 4
url_summit4<- 'https://mountwashingtonavalanchecenter.org/weather-avalanche-log/?frm-page-12667=4'
summit4 <- read_html(url_summit4)
summit_table4 <- html_table(summit4)

head(summit_table4)
summit_data4 <- as.data.frame(summit_table4)
#if prints proper table, edit rows to be numrical values with gsub()
summit_data4[,2] <- gsub("F","", summit_data4[,2])
summit_data4[,3] <- gsub("F","", summit_data4[,3])
summit_data4[,4] <- gsub("in","", summit_data4[,4])
summit_data4[,5] <- gsub("in","", summit_data4[,5])
summit_data4[,6] <- gsub("MPH","", summit_data4[,6])
summit_data4[,7] <- gsub("MPH","", summit_data4[,7])
#----------------------------------------------------
# WIND
summit_data4[,8] <- gsub("[(N) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(NNE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(NE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(E) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(ENE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(ESE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(SE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(SSE) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(S) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(SSW) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(SW) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(WSW) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(W) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(WNW) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(NW) ]","", summit_data4[,8])
summit_data4[,8] <- gsub("[(NNW) ]","", summit_data4[,8])
#removing obs column
summit_data4 <- summit_data4[,-(9), drop = FALSE]

#changing column 1 to dates
summit_data4[,1] <- as.Date(summit_data4[,1], "%m/%d/%y")

#defining as numeric
summit_data4[,2] <- as.numeric(summit_data4[,2])
summit_data4[,3] <- as.numeric(summit_data4[,3])
summit_data4[,4] <- as.numeric(summit_data4[,4])
summit_data4[,5] <- as.numeric(summit_data4[,5])
summit_data4[,6] <- as.numeric(summit_data4[,6])
summit_data4[,7] <- as.numeric(summit_data4[,7])
summit_data4[,8] <- as.numeric(summit_data4[,8])

#combining data.frame
summit_data_all <- rbind(summit_data, summit_data2, summit_data3, summit_data4)

#making numeric
summit_data_all[,2:8] <-lapply(summit_data_all[,2:8], as.numeric)

#------------------------------------------------------
# hermit lake data

url_hermit <- 'https://mountwashingtonavalanchecenter.org/hermit-lake-snow-plot-data-all/'
hermit <- read_html(url_hermit)
hermit_table <- html_table(hermit)
head(hermit_table)
hermit_data <- as.data.frame(hermit_table)
#edit with gsub()
hermit_data[,2] <- gsub("CM", "", hermit_data[,2])
hermit_data[,2] <- gsub("Trace", "0.05", hermit_data[,2])
hermit_data[,3] <- gsub("MM", "",hermit_data[,3])
hermit_data[,3] <- gsub("Trace", "0.05",hermit_data[,3])
hermit_data[,4] <- gsub("[%]", "", hermit_data[,4])
hermit_data[,5] <- gsub("CM", "", hermit_data[,5])
hermit_data[,5] <- gsub("Trace", "0.05", hermit_data[,5])
hermit_data[,6] <- gsub("CM", "", hermit_data[,6])
hermit_data[,7] <- gsub("C", "", hermit_data[,7])
hermit_data[,8] <- gsub("C", "", hermit_data[,8])
hermit_data[,9] <- gsub("C", "", hermit_data[,9])
#removing comment column
hermit_data <- hermit_data[-(12)]

#changing column 1 to dates
hermit_data[,1] <- as.Date(hermit_data[,1], "%m/%d/%y")
#making numeric
hermit_data[,2:9] <-lapply(hermit_data[,2:9], as.numeric)
hermit_data[,4] <-  hermit_data[,4] * .01
#---------------------------------------------------
#hermit_data page 2
url_hermit2 <- 'https://mountwashingtonavalanchecenter.org/hermit-lake-snow-plot-data-all/?frm-page-11115=2'
hermit2 <- read_html(url_hermit2)
hermit_table2 <- html_table(hermit2)
head(hermit_table2)
hermit_data2 <- as.data.frame(hermit_table2)
#edit with gsub()
hermit_data2[,2] <- gsub("CM", "", hermit_data2[,2])
hermit_data2[,2] <- gsub("Trace", "0.05", hermit_data2[,2])
hermit_data2[,3] <- gsub("MM", "",hermit_data2[,3])
hermit_data2[,3] <- gsub("Trace", "0.05",hermit_data2[,3])
hermit_data2[,4] <- gsub("[%]", "", hermit_data2[,4])
hermit_data2[,5] <- gsub("CM", "", hermit_data2[,5])
hermit_data2[,5] <- gsub("Trace", "0.05", hermit_data2[,5])
hermit_data2[,6] <- gsub("CM", "", hermit_data2[,6])
hermit_data2[,7] <- gsub("C", "", hermit_data2[,7])
hermit_data2[,8] <- gsub("C", "", hermit_data2[,8])
hermit_data2[,9] <- gsub("C", "", hermit_data2[,9])
#removing comment column
hermit_data2 <- hermit_data2[-(12)]

#changing column 1 to dates
hermit_data2[,1] <- as.Date(hermit_data2[,1], "%m/%d/%y")
#making numeric
hermit_data2[,2:9] <-lapply(hermit_data2[,2:9], as.numeric)
hermit_data2[,4] <-  hermit_data2[,4] * .01
#------------------------------------------------------
#hermit_data page 3
url_hermit3 <- 'https://mountwashingtonavalanchecenter.org/hermit-lake-snow-plot-data-all/?frm-page-11115=3'
hermit3 <- read_html(url_hermit3)
hermit_table3 <- html_table(hermit3)
head(hermit_table3)
hermit_data3 <- as.data.frame(hermit_table3)
#edit with gsub()
hermit_data3[,2] <- gsub("CM", "", hermit_data3[,2])
hermit_data3[,2] <- gsub("Trace", "0.05", hermit_data3[,2])
hermit_data3[,3] <- gsub("MM", "",hermit_data3[,3])
hermit_data3[,3] <- gsub("Trace", "0.05",hermit_data3[,3])
hermit_data3[,4] <- gsub("[%]", "", hermit_data3[,4])
hermit_data3[,5] <- gsub("CM", "", hermit_data3[,5])
hermit_data3[,5] <- gsub("Trace", "0.05", hermit_data3[,5])
hermit_data3[,6] <- gsub("CM", "", hermit_data3[,6])
hermit_data3[,7] <- gsub("C", "", hermit_data3[,7])
hermit_data3[,8] <- gsub("C", "", hermit_data3[,8])
hermit_data3[,9] <- gsub("C", "", hermit_data3[,9])
#removing comment column
hermit_data3 <- hermit_data3[-(12)]

#changing column 1 to dates
hermit_data3[,1] <- as.Date(hermit_data3[,1], "%m/%d/%y")
# making numeric
hermit_data3[,2:9] <-lapply(hermit_data3[,2:9], as.numeric)
hermit_data3[,4] <-  hermit_data3[,4] * .01
#combing vectors
hermit_data_all <- rbind(hermit_data, hermit_data2, hermit_data3)
#---------------------------------------------------

#Avalanche Danger Vector
#page 1
url_avy1 <- 'https://mountwashingtonavalanchecenter.org/advisory-archives/'
avy1 <- read_html(url_avy1)
avy_html1 <- html_nodes(avy1, 'strong')
avy_data1 <- html_text(avy_html1)
#page 2
url_avy2 <- 'https://mountwashingtonavalanchecenter.org/advisory-archives/?archivist_page=2'
avy2 <- read_html(url_avy2)
avy_html2 <- html_nodes(avy2, 'strong')
avy_data2 <- html_text(avy_html2)
#page 3
url_avy3 <- 'https://mountwashingtonavalanchecenter.org/advisory-archives/?archivist_page=3'
avy3 <- read_html(url_avy3)
avy_html3 <- html_nodes(avy3,'strong')
avy_data3 <- html_text(avy_html3)
#page 4
url_avy4 <- 'https://mountwashingtonavalanchecenter.org/advisory-archives/?archivist_page=4'
avy4 <- read_html(url_avy4)
avy_html4 <- html_nodes(avy4,'strong')
avy_data4 <- html_text(avy_html4)
# combing vectors
avy_data <- c(avy_data1, avy_data2, avy_data3, avy_data4)
#removing "Menu"
avy_data <- avy_data[avy_data!="Menu"]
#creating avy_danger and avy_problem vectors
#avy_danger
avy_danger <- avy_data[avy_data!= "Wind Slab "] 
avy_danger <- avy_danger[avy_danger!= "Storm Slab "]
avy_danger <- avy_danger[avy_danger!= "Wet Slab "]
avy_danger <- avy_danger[avy_danger!= "Dry Loose "]
avy_danger <- avy_danger[avy_danger!= "Wet Loose "]
avy_danger <- avy_danger[avy_danger!= "None "]
avy_danger <- avy_danger[avy_danger!= "General Bulletin "]

#avy_problem
avy_problem <- avy_data[avy_data!= "Low "]
avy_problem <- avy_problem[avy_problem!= "Moderate "]
avy_problem <- avy_problem[avy_problem!= "Considerable " ]
avy_problem <- avy_problem[avy_problem!= "High " ]

#check for aligning with data.frames 




#troubleshoot
#------------------------------------------------------

#Harvard snow plot data
url_harvard <- 'https://mountwashingtonavalanchecenter.org/harvard-cabin-snow-plot-data-all/'
harvard <- read_html(url_harvard)
harvard_table <- html_table(harvard)
head(harvard_table)
harvard_data <- as.data.frame(harvard_table)
#edit with gsub()
harvard_data[,2] <- gsub("CM", "", harvard_data[,2])
harvard_data[,2] <- gsub("Trace", "0.05", harvard_data[,2])
harvard_data[,3] <- gsub("MM", "",harvard_data[,3])
harvard_data[,3] <- gsub("Trace", "0.05",harvard_data[,3])
harvard_data[,4] <- gsub("[%]", "", harvard_data[,4])
harvard_data[,5] <- gsub("CM", "", harvard_data[,5])
harvard_data[,5] <- gsub("Trace", "0.05", harvard_data[,5])
harvard_data[,6] <- gsub("CM", "", harvard_data[,6])
harvard_data[,7] <- gsub("C", "", harvard_data[,7])
harvard_data[,8] <- gsub("C", "", harvard_data[,8])
harvard_data[,9] <- gsub("C", "", harvard_data[,9])

#removing comment column
harvard_data <- harvard_data[-(12)]

#changing column 1 to dates
harvard_data[,1] <- as.Date(harvard_data[,1], "%m/%d/%y")
#making numeric
harvard_data[,2:9] <-lapply(harvard_data[,2:9], as.numeric)
harvard_data[,4] <-  harvard_data[,4] * .01
#-----------------------------------------------
alex <- 'zkua01@syr.edu'
#----------------------------------------------

#numeric avy danger values
library(plyr)
avy_numeric <- revalue(avy_danger, replace = c("Low " = 0, "Moderate " = 10, "Considerable " = 20, "High " = 30))

avy_numeric <- as.numeric(avy_numeric)

#12/01/18 element
#    <tr class=""><td class="">12/01/18</td><td class="">25 F</td><td class="">16 F</td><td class="">  0.00 in</td><td class="">  0.0 in</td><td class="">25.3 MPH</td><td class="">41 MPH </td><td class=""><p></p>
#<p>320 (NW)</p>
  #<p></p></td><td class=""> </td></tr>











library(scatterplot3d)
library(RColorBrewer)

# get colors for labeling the points
z <- pann # pick a variable to plot
nclr <- 4 # number of colors
plotclr <- brewer.pal(nclr,"Set1") # get the colors
colornum <- cut(rank(z), nclr, labels=FALSE)
colcode <- plotclr[colornum] # assign color

# scatter plot
plot <- scatterplot3d(x, y, z, type="h", angle= 40, color=colcode, pch=20, cex.symbols=2, 
                      col.axis="gray", col.grid="gray")
legend("topleft", legend = levels(z))
+      col = c("#DA0017", "#843692", "#94431F", "#F267B2")