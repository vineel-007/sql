show databases;
use vineel;
show tables;
select * from automobile;
select distinct(make) from automobile;
#1
select make ,count(*) as num_OF_veh from automobile group by make order by num_of_veh desc;
#2
select make,price,max(horsepower) as max_hp,avg(horsepower) as avg_hp,min(price) as min_pr from automobile group by make,price order by avg_hp,min_pr;
#3
select distinct symboling from automobile;
#3
select distinct make,price as avg_price,symboling from automobile where symboling<0 order by symboling;
#4
select distinct make,price as avg_price,symboling from automobile where symboling>0 order by symboling;
#5
select distinct make,symboling from automobile where symboling<0 order by symboling;
#6
select body_style, sum(horsepower),max(price)from automobile group by body_style;
select drive_wheels,count(drive_wheels) from automobile group by drive_wheels;
-- 4wd there are 8 cars
#7
select make as manufacturer,sum(price) as total_sales from automobile group by make order by total_sales;
#8
select(count(*)/(select count(*) from automobile))*100 from automobile where normalized_losses;
#9
select distinct make,sum(price),symboling from automobile group by make,symboling order by symboling desc;
#10
select make,max(horsepower) from automobile group by make order by max(horsepower)desc;
#11
select make, min(price),avg(horsepower) from automobile group by make order by avg(horsepower);
#12
select make as manufacturer, avg(horsepower) as drive_wheels from automobile where symboling group by make order by drive_wheels;
#13
select make from automobile where horsepower>(select avg(horsepower) from automobile) and price<(select avg(price) from automobile);
#14
select make symboling,price from automobile;
#15
use vineel;
select* from automobile;
select make horsepower,body_style as derived from automobile;
