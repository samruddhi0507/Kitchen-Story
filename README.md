# Kitchen-Story

## Project Details
This project aims to design and develop an E-commerce website that lets people shop basic food items using Angular and Spring boot. It enables users to search and buy the available products. It was developed as a project of Phase-4 for the Full Stack Java Developer course.
 
## Product Backlog:
1.	Create database and tables.
2.	Initialize a Spring Boot project for the Back-End side.
3.	Create REST APIs with spring Data JPA Repositories 
4.	Create a new Angular project for the Front-End side.
5.	Create login and register pages.
6.	Show all products to the home page.
7.	Create a product details component.
8.	Search a product by a category.
9.	Search a product by a keyword.
10.	Add products to the cart.
11.	Show user’s cart.
12.	Remove a product from the cart.
13.	Update user account
14.	Create the admin view 
15.	Delete a product for the admin
16.	Add a new product for the admin
17.	Add bootstrap and font awesome to the components. 
18.	Debug and test the project.


## Technologies and tools Used
1.	Angular: used in the front-end side to build modern single-page applications
2.	Spring Boot: used in the back-end side to create the REST API and retrieve data from a database.
3.	HTML/CSS: to create and format the content of the pages.
4.	Bootstrap: to use some CSS and JavaScript designs.
5.	Maven: to manage the project.
6.	Visual Studio Code: to write and run the Angular code.
7.	IntelliJ: to write and run the Spring Boot code.
8.	phpMyAdmin: to administrate and manage the database manually.

## Flowcharts of The Application
Flow chart is for submit number 1 (some few changes were not added here)
![image](https://user-images.githubusercontent.com/64940728/125710594-6d31612d-85ff-4127-bd70-d601673d6e10.png)

## Core concepts used in the project. 
1.	Object-Oriented: used to create and model objects for users and their credentials.
2.	REST API: used to communicate between the back-end and the front-end sides.
3.	Data Access Object: to abstract and encapsulate all access to the data source.
4.	Object–Relational Mapping: to map the objects to the database.
5.	Databases: used to store and retrieve data.
6.	Data Sources: used to define a set of properties required to identify and access the database.
7.	Collections: used some collections such Arraylist to store collection of data. 
8.	Exception Handling: used to catch problems that arises in the code especially in I/O blocks.


## How to run the program
•	clone project

  o	clone git : git clone https://github.com/MujtabaMohsin/Kitchen-Story
  
•	Import the “database\kitchen-story.sql” file to your database administration tool.

•	Go to “Back-end\Kitchen-Story\src\main\resources\application.properties” file, open it.

•	Edit some values of the database’ properties to be suit to your database administration tool.

•	Run the back end project as a maven project:

  o	cd to your project “Back-end\Kitchen-Story”
  
  o	mvn compile
  
  o	mvn exec:java -Dexec.mainClass=com.simplilearn.KitchenStory
  
  
•	Open another command line for the front-end part.

•	cd to your project “Front-end-end\Kitchen-Story”

•	install the following:

  o	npm install --save-dev
  
  o	npm install @angular/localize --save
  
  o	npm install bootstrap --save
  
  o	npm install font-awesome –save
  
  
•	Run using ng serve –open

•	It would be shown in http://localhost:4200/


## Screenshots
![image](https://user-images.githubusercontent.com/64940728/126695618-810d1f6b-9dd2-4b30-8f3e-e284eeceae2f.png)

![image](https://user-images.githubusercontent.com/64940728/126695628-646fbc83-dea1-47f0-b84d-1073fca9c548.png)

![image](https://user-images.githubusercontent.com/64940728/126695651-056944a0-c568-4b25-9976-05477e7ecb60.png)

![image](https://user-images.githubusercontent.com/64940728/126695663-c5942f9f-c36b-4ad4-9e15-04b0e4a3e1bb.png)

![image](https://user-images.githubusercontent.com/64940728/126695675-dd33eb47-53e9-4f28-81c2-a6c10eb8b747.png)


![image](https://user-images.githubusercontent.com/64940728/126695690-a7f43216-f55b-414e-bdb2-adade60230ee.png)


![image](https://user-images.githubusercontent.com/64940728/126695704-ff25c0e0-7711-4d66-9585-4a7c16283128.png)

![image](https://user-images.githubusercontent.com/64940728/126695714-546ab0b5-b86b-4145-b40f-4adee50c83e6.png)

![image](https://user-images.githubusercontent.com/64940728/126695725-c09d7dc9-b65d-4afd-bc43-4875242143c5.png)


![image](https://user-images.githubusercontent.com/64940728/126695738-b50a08d7-ce49-4129-89a6-c110b18592c1.png)

![image](https://user-images.githubusercontent.com/64940728/126695747-bcb331e3-7cd6-421e-ab0a-6943c824c7b0.png)


![image](https://user-images.githubusercontent.com/64940728/126695761-68225a2e-a704-415e-992a-2fa9db32d65e.png)




