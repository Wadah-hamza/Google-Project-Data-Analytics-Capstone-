# Google_Data_Analytics_Project
### wadah 2024-09-27
## Google Data Analytics Capstone Project Introduction

  ### In this case study we will explore: -

 * The differences in how casual and regular members use the bikes.

* We will compare them based on the number of rides, Bike type, and duration during the day of the week. Kindly note this fiction company. If you want the Data please press the links.
## Who is the Cyclistic Company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single- ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

## Scenario
I am a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Also, Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Steps
## Ask
Three questions will guide the future marketing program:
 1. How do annual members and casual riders use Cyclistic bikes differently? 
 2. Why would casual riders buy Cyclistic annual memberships? 
 3. How can Cyclistic use digital media to influence casual riders to become members?
My work is to answer : How do annual members and casual riders use Cyclistic bikes differently?

## Prepare
We will use the company customer data for the trips, our analysis will be based on one-year customer data from September 2023 to August 2024. Note: The datasets have a different name because Cyclistic is a fictional company. For the purposes of this case study, the datasets are appropriate and will enable you to answer the business questions. The data has been made available by Motivate International Inc. under this license.) This is public data that you can use to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identifiable information. This means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes

## Organize the Data
The dataset comprises 12 files, with each month stored in a separate file. Each file consists of 15 columns and over 600,000 rows. We have carefully reviewed all the data and confirmed that it is complete, containing all the necessary information to address the issue.
Process
We will work with Excel for cleaning and R Language its easy, fast, and to do all our work in one place.

## Cleaning
We used Excel to format the data. We inserted a column called "day of the week" to indicate the day of the week based on the start date. We also cleaned the data by creating a column to calculate the ride length (by subtracting the end time from the start time) and deleted rows that have a negative value, as those indicate that the bikes were out of circulation for quality control reasons.
## Import the data
We import the data using the R language and combine all 12 files into one file. Then, we check the data type of our data. We need to calculate the duration time by subtracting the end time from the start time and converting it to seconds.. 
for more information open the Import data code.

![Thumbnail](https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/Picture1.jpg)

We performed tests to ensure that our dates have the same format by using the str() function. The data was cleaned using the summary function, which provided the mean, minimum, maximum, and median values for the ride length. If there is a negative sign, it means there is a problem in the start time and end time. After checking all the data and making our calculations, we started the visualization. We need to compare the average duration and number of rides, and this information will be obtained from the complete ride data.

### Numbers of trips & Average duration 
![Thumbnail](https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/Picture2.png)

![Thumbnail](https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/picture4.png)



## Who makes more trips?
* The member uses the bike more than the casual customers. the member customer takes 64% of the rides.

* In the weekend, the number of rides for casual customers is almost the same as the number of rides for member customers.

## Duration
* We see here the casual customers, their duration is high. Their average duration is two time the member customers.


## Advertise

To advertise successfully, we need to determine when and where to do so. It's important to choose the peak time for advertising. Based on our analysis, the peak time for advertising will be from May to August, after which it will decrease. In terms of days of the week, we will focus on Friday, Saturday, and Sunday, with the suitable time for advertising being from 10 am to 8 pm.

![Thumbnail](https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/Casual%20Trips%20Trends.png)
![Thumbnail]( https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/Trip%20Time.png)


 

After choosing the best time, we will then select the location. We will advertise at the start and end stations and increase our advertising at the top start and end stations.
 ![Thumbnail](https://github.com/Wadah-hamza/Google-Project-Data-Analytics-Capstone-/blob/main/Top%20Statiom.png)

## Summary
* Casual customers take fewer rides than member customers, but their ride durations are longer. Our advertisement should be included on th weekend.
* We can offer a discount for long distances with our subscription.
* Casual customers prefer electric bikes over Classic ones for longer rides, so we must consider this in our advertising.
* We can organize competitions and activities for the members, such as long-distance races.

