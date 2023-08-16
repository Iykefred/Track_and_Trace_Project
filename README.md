# Track_and_Trace_Project

Aberdeen City Council has decided that the best way to deal with the Covid-19 pandemic is to implement a city-wide Track-and-Trace system in an effort to monitor personal contacts of those using hospitality venues, such as bars, restaurants, and hotels. The objectives of this project is to design an SQL relational database model that holds customer details, in an effort to facilitate this process.


**PROJECT UNDERSTANDING
**

**Scenario** 

Ella Hamilton Fuller and Kristina Mercer Fuller are close friends and are staying together in Aberdeen, they usually go to Pubs in Aberdeen. They were recently tested positive for Covid-19.

**Task**

Finding out about their visits to pubs on 30/10/2021 and their contacts with other people or groups so that the particular people or group could  self isolate.

**Queries**

Which pubs were visited by Ella and Kristina

What are the details of places visited; customer names, phone numbers and pub visited by Ella and Kristina

What is the number of visitors of different pubs where Ella and Kristina visited

Who are the customers that visited the same pubs within the same duration Ella and Kristina visited

Who are the customers that shared the same pubs with Ella and Kristina

What are the total number of people that need to self isolate?



**SOLUTIONS**


1. List of pub visited by Ella and Kristina
2. Breakdown of visitors by pub where Ella and Kristina visited. These are the head-count of customers who visited the same pub where Ella and Kristina visited.
3. Records of all customers who visited the pubs visited by Ella and Kritina.
4. Records of all customers who were present around the time Ella and Kristana visited the pubs. This query aims to closely match when Ella and kristina visited and if the time overlaps with other customers
5. List of customer names and phone numbers that need to self isolate
6. Total Number of people that need to self-isolate.



**1**. ----List of pub visited by Ella or Kristina

select distinct(a.pub_id) as 'PUB ID', b.name as PUBS

 from register a, pub b 

where a.pub_id=b.id  and
PHONE_NUMBER_ID in ('07959260054', '07900105226')

order by pub_id;

2. ---- Breakdown of visitors by pub where Ella and Kristina visited. These are the head-count of customers who visited the same pub where Ella and Kristina visited.

select a.pub_id as 'PUB ID', b.name as 'PUB', count(a.phone_number_id) as 'Number of Customers'

 from register a, pub b, customer c where a.pub_id=b.id and a.PHONE_NUMBER_ID = c.phone_number and
pub_id in (select  distinct(pub_id) from register 

where phone_number_id = '07959260054' or PHONE_NUMBER_ID = '07900105226')

group by pub_id order by pub_id;


3. ------ Records of all customers who visited the pubs visited by Ella and Kritina. 



select a.pub_id as 'PUB ID', b.name as 'PUB', c.first_name as 'First Name', 
c.MIDDLE_NAME as 'Middle Name', c.last_name as 'Last Name',
a.phone_number_id as 'Customer Phone Number', a.time_of_entry as 'Time of Entry'

 from register a, pub b, customer c where a.pub_id=b.id and a.PHONE_NUMBER_ID = c.phone_number and
pub_id in (select  distinct(pub_id) from register 

where phone_number_id = '07959260054' or PHONE_NUMBER_ID = '07900105226')

order by pub_id, TIME_OF_ENTRY;





4. ---- Records of all customers who were present around the time Ella and Kristana visited the pubs. This query aims to closely match when Ella and kristina visited and if the time overlaps with other customers

Four PUBS were visited between Ella and Kristina, of which two of these PUBS were visted by both of them.
Therefore, to get Ella and Kristina departure time for PUB (The Wild Boar) and PUB (Ma Cameron's) respectively, we need to use their arival time at PUB (McGinty's Meal An' Ale).
Similarly, to get Ella and Kristina departure time for PUB (McGinty's Meal An' Ale), we need to use their arival time at PUB (Miller & Carter Steakhouse)


select a.id as 'Register Number', a.pub_id as 'PUB ID', b.name as 'PUB Name', 
a.phone_number_id as 'Customer Phone Number', c.first_name as 'First Name', c.last_name as 'Last Name',
a.time_of_entry as 'Time of Entry', a.group_yn as 'Arrived in a Group Yes/No' 

from register a, pub b, customer c

 where a.pub_id=b.id and a.phone_number_id=c.phone_number and 
 (exists (select 1 from (select phone_number_id, pub_id, time_of_entry , 

COALESCE((select min(time_of_entry) from register x where x.time_of_entry > aa.time_of_entry 
and aa.phone_number_id = x.phone_number_id),date(DATE_ADD(time_of_entry, INTERVAL 1 day)))  time_of_exit

from register aa

where phone_number_id  = '07959260054' ) d
where a.pub_id = d.pub_id
 and a.time_of_entry <= d.time_of_exit)

or 

exists (select 1 from (select phone_number_id, pub_id, time_of_entry , 
COALESCE((select min(time_of_entry) from register x where x.time_of_entry > aa.time_of_entry 
and aa.phone_number_id = x.phone_number_id),date(DATE_ADD(time_of_entry, INTERVAL 1 day))) time_of_exit
from register aa
where phone_number_id ='07900105226') e
where a.pub_id = e.pub_id
 and a.time_of_entry <= e.time_of_exit));



5. ----- List of customers that shared PUBS with Ella and Kristina. 
Since Ella and Kristina have tested positive to covid, there is need for customers who shared the same PUBS within the same duration as Ella and Kristina to self isolate

select distinct(a.phone_number_id) as 'Customer Phone Number', c.first_name as 'First Name', 
c.last_name as 'Last Name' 

from register a, pub b, customer c

 where a.pub_id=b.id and a.phone_number_id=c.phone_number and 
 (exists (select 1 from (select phone_number_id, pub_id, time_of_entry , 
COALESCE((select min(time_of_entry) from register x where x.time_of_entry > aa.time_of_entry 
and aa.phone_number_id = x.phone_number_id),date(DATE_ADD(time_of_entry, INTERVAL 1 day)))  time_of_exit

from register aa

where phone_number_id  = '07959260054' ) d
where a.pub_id = d.pub_id
 and a.time_of_entry <= d.time_of_exit)

or 

exists (select 1 from (select phone_number_id, pub_id, time_of_entry , 
COALESCE((select min(time_of_entry) from register x where x.time_of_entry > aa.time_of_entry 
and aa.phone_number_id = x.phone_number_id),date(DATE_ADD(time_of_entry, INTERVAL 1 day))) time_of_exit
from register aa
where phone_number_id ='07900105226') e
where a.pub_id = e.pub_id
 and a.time_of_entry <= e.time_of_exit));


6. ----- Total Number of people that need to self-isolate

Forty three customers would have to self isolate (with Ella and Kristina inclusive) since they potentialy had contact with them in either one or many of the PUBS visited by Ella and Kristina.

select count(phone_number) as 'Total Number of Persons that need to self Isolate' 

from customer

where 
 phone_number in (select PHONE_NUMBER_ID from register where pub_id in (10012, 10013) and TIME_OF_ENTRY <= '2021-10-30 20:00:00'

union

select PHONE_NUMBER_ID from register where pub_id = 10001 and TIME_OF_ENTRY <= '2021-10-30 21:30:00'

union

select PHONE_NUMBER_ID from register where pub_id = 10002);
