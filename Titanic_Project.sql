use etlcl;

select * from Titanic;

-- 1. Select all columns for all passengers in the Titanic dataset. 
select * from Titanic;

-- 2. Display the number of passengers in each class (1st, 2nd, 3rd).
select Pclass,count(*) from Titanic
group by Pclass;

-- 3. Find the number of male and female passengers.
select Sex, count(*) from Titanic
group by Sex;

-- 4. Display the names of passengers who survived.
select Name from Titanic
where Survived='Survived';

-- 5. Find the average age of passengers.
select avg(Age) from Titanic;

-- 6. List the names and ages of passengers who were younger than 18.
select Name, Age from Titanic
where Age < 18;

-- 7. Display the number of passengers in each embarkation port (C, Q, S). 
select Embarked,count(*) from Titanic
group by Embarked;

-- 8. Find the highest fare paid by any passenger.
select Fare from Titanic
order by Fare desc limit 1;

-- 9. List the average age of passengers for each class. 
select Pclass,avg(Age) from Titanic
group by Pclass;


-- 10. Display the passenger names and ages for those who survived and were in 1st class.
select Name, Age ,Pclass ,Survived from Titanic
where Pclass=1 and Survived='Survived';

-- 11. Find the number of passengers who paid more than 50 for their ticket.
select count(*) from Titanic
where Fare > 50;

-- 12. List the names of passengers who did not survive and were in 3rd class. 
select Name, Pclass, Survived from Titanic
where Pclass=3 and Survived='Died';

-- 13. Find the number of passengers with missing values in the "Age" column. 
select count(*) from Titanic
where Age is null;

-- 14. Display the passenger names and ages for those who embarked at port 'S' and survived.
select Name , Age from Titanic
where Survived='Survived' and Embarked='S';

-- 15. Calculate the total number of passengers on board. 
select count(*) from Titanic;

-- 16. List the average fare for each class.
select Pclass, avg(Fare) from Titanic
group by Pclass;

-- 17. Display the passenger names and ages for those with a known age and a fare greater than 100. 
select Name ,Age from Titanic
where Age is not null and Fare > 100;

-- 18. Find the percentage of passengers who survived. 
select ((count(Survived='Survived')  / count(*)) *100)  as percentage from Titanic;


-- 19. List the names of passengers who were in 2nd class and had a fare less than 20. 
select Name from Titanic
where Pclass=2 and Fare <20;

-- 20. Display the passenger names and ages for those who did not survive and were in 1st class.
select Name ,Age from Titanic
where Survived='Died' and Pclass=1;

-- 21. Find the number of passengers for each combination of class and gender. 
SELECT Pclass, Sex, COUNT(*) AS num_passengers
FROM Titanic
GROUP BY Pclass, Sex;

-- 22. List the names of passengers who survived and were in 3rd class with an age less than 20.
select Name from Titanic
where Survived='Survived' and Pclass=3 and Age < 20;

-- 23. Display the passenger names for those with the name starting with 'Mr.' 
select Name from Titanic
where Name like '%Mr.%';

-- 24. Find the average age of male and female passengers.
select Sex,avg(Age) from Titanic
group by Sex;

-- 25. List the names of passengers who paid the highest fare. 
select Name, Fare from Titanic
order by Fare desc;

-- 26. Find the number of passengers for each embarkation port and class. 
SELECT Embarked, Pclass, COUNT(*) AS num_passengers
FROM Titanic
GROUP BY Embarked, Pclass;

-- 27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select Name, Age from Titanic
where Survived='Survived' and Fare > 200;

-- 28. Find the average age of passengers who survived and those who did not. 
select Survived , avg(Age) from Titanic
group by Survived;

-- 29. List the names of passengers who were in 1st class and had an age greater than 50. 
select Name from Titanic
where Pclass=1 and Age >50;

-- 30. Display the passenger names for those with the name ending with 'sson'.
select Name from Titanic
where Name like '%sson';