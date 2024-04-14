# Cats_database

#### This project has the scratch architecture of a vet clinit database. I used the results of my [CatApi](https://github.com/robi12issv/CatApi.git) project to get the data and the architecture.

## Description

The intent of this project is to gather and organize information that helps people that love cats but have kids and other pets, in order to have a happy life. 
The repository contains the database `cats` that contains tables with cat breeds that interact best with kids and/or cats.  
![Screenshot 2024-04-13 at 10 16 37](https://github.com/robi12issv/Cats_database/assets/160391019/6c643eec-10d9-4e26-b069-e43c367000cb)  
The database also contains a table with owners and information related to theis cats and if they have dogs or kids.  
![Screenshot 2024-04-13 at 10 16 58](https://github.com/robi12issv/Cats_database/assets/160391019/30e3065c-3261-448a-9e9b-10138897d573)  
The database has a table with medical information about the cats that extracts informations directly from the `owners` table. This is the actual start
of a real database that can be used in vet clinics.

## Project guide

In the first part, the database `cats` and the 4 tables (`breeds_for_dogs`, `breeds_for_kids`, `owners`, `neutered`) are created.  
The second parts consists in changes made to the tables that led to a satisfactory and suitable result.  
![Screenshot 2024-04-14 at 16 25 42](https://github.com/robi12issv/Cats_database/assets/160391019/a664bcb2-955b-4c8a-bf99-8d3a133f5a90)  
The third part comtains the information that is inserted into the tables as well as updates of the information.  
The fourth part allows the user to see the results of the prvious steps, using the `select * from` syntax.  
The fifth and last part contains `joins` methods that has the goal of extracting only some specific information from the database
such as the owners that have dogs and their cat or information of the owners that have kids.  
![Screenshot 2024-04-14 at 16 37 47](https://github.com/robi12issv/Cats_database/assets/160391019/2b30582b-3e29-4b34-85f9-02db09f5143e)
