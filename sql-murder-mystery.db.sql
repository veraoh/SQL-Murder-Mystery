--open the crime database with the clue in the information given
select *
from crime_scene_report
where city = 'SQL City' and type = 'murder' and date = 20180115

--Get witness 1 details
CREATE TEMPORARY TABLE wit1_id as 
select id, max(address_number)
from person
where address_street_name = "Northwestern Dr"; 

--Get witness 2 details
select id
from person
where name like 'Annabel%' and address_street_name = 'Franklin Ave'

--Check for their interview with their person id
Select *
from interview
where person_id in (14887, 16371)

--Search for the killer using the info wit1 gave; his gym id
Select * 
from get_fit_now_member
where id like '48Z%' and membership_status = 'gold'

--confirm the membership id with check in date given by wit 2 
select *
from get_fit_now_check_in
where membership_id in ('48Z7A', '48Z55') and check_in_date = 20180109

--check car license id from person table using the person id
select * 
from person
where id in (28819, 67318)

--check for platenumber with drivers license id
select * 
from drivers_license
where id in (173289, 423327)

---confirm with platenumber and license 
select * 
from drivers_license
where plate_number like '%H42W%' and id in (173289, 423327)

-- Only Jeremy with id person id 67318 has a car that matches the car plate number so we check his interview using his person id 
select *
from interview
where person_id = 67318


-- Jeremy gave details of the person who hired him, so check for her with name her car details 
SELECT *
from drivers_license
where hair_color = 'red' and car_make = 'Tesla' and car_model = 'Model S' and height between 65 and 67


-- three people own that car model with the description, so we follow up by getting their person id, using their license id
select *
from person
where license_id in (202298, 291182, 918773)

--With their person id, we can confirm which of them attended the SQL Symphony Concert thrice in december by checking facebook 
 SELECT * 
 from facebook_event_checkin
 where event_name = 'SQL Symphony Concert' and date between 20171201 and 20171231 and person_id in (78881, 90700, 99716)
 
 --We got her id, so check her income since she earns a lot, using her personid to get her ssn 
  select * 
 from person
 where id = 99716
 
 --check for income in the income table using the ssn retrieved
 select *
 from income
 where ssn = 987756388

--CONCLUSION: MIRANDA PRIESTLY HIRED JEREMY BOWERS TO COMMIT THE MURDER ON 20180115

                
                
                