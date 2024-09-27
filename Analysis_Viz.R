# analysis by the average of the duration
all_month %>% 
  group_by(member_casual,day_of_week) %>% 
  summarise(number_of_rides = n(),
            average_duration = mean(ride_lenght_2,,na.rm = TRUE)) %>% 
  arrange(member_casual,day_of_week) %>% 
  ggplot(aes(x = day_of_week, y = average_duration, fill = member_casual))+
  geom_col(position = "dodge")
#analysis by number of rides
all_month %>% 
  group_by(member_casual,day_of_week) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(member_casual,day_of_week) %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = member_casual))+
  geom_col(position = "dodge")

# analysis Customers Bike type
member <- all_month %>%
  group_by(member_casual, rideable_type) %>%  # Group by member type and bike type
  summarise(number_of_rides = n()) %>% 
  filter(member_casual == "member")
member_total <- sum(member$number_of_rides) # Total number of ride for pring the %
member <- member %>% 
  mutate(percentage = (number_of_rides / sum(number_of_rides)) * 100)

#Viz using pie
pie(member$number_of_rides,
    paste0(member$member_casual, ": ", round(member$percentage, 1), "%"), 
    main = "Classic Bike Rides by Member Type", 
    col = c("skyblue", "lightgreen"))  # Optional colors

