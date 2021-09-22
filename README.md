# Bus Booking System 

This is a Bus ticket booking system project that I worked on the backend using PHP & MYSQL. The idea for the user is simply to add the Source and Destination and he/she would be presented with a table of all the buses availabe which fall under his/her source and destination route. 

After he/she has selected the bus according to his suitable schedule he would be allowed to confirm his reservation and then get a printed ticket with the details about his journey which he/she would be allowed to store on his/her local device.This project uses the MYSQL database named 'sessionpractical' which contains 8 tables in total.

## Different Modules of this project 

* User Login/Sign-up
* Checking Bus schedule
* Ticket Booking
* Ticket Printing
* Admin Control Panel
* Add records
* Delete Records
* Edit Records

## Homepage 

![](screenshots/Screenshot%20(114).png)
![](screenshots/Screenshot%20(115).png)

## User Login/Sign-up

The website provides the ability for the user to Sign-in/Sign-out at will. It provides a prompt from the homepage which opens up after clicking on the Login/Signup option on the navbar. This is done by using simple 'SELECT' MYSQL query and using the mysqli_query function to execute it. The login session is then created with 'SESSION' after successful registration.  

![](screenshots/Screenshot%20(120).png)

## Checking Bus Schedule

The user is provided with the bus schedule according to his/her source and destination. This is done using matching the source and destination in the buses table in sessionpractical database. All the details of each bus available is stored in the 'buses' table which stores the bus number its source and destination. The buses whoes route falls under the source an destination of the user those buses are displayed along with its number, source and destination.

![](screenshots/Screenshot%20(116).png)

## Ticket Booking 

After the user is presneted with the buses according to his route he is allowed to choose bus according to the schedule suitable to him. The details of every 'booking' are stored in the booking table. This table contains the user name the bus number he selected, its source and destination and his date of departure.

![](screenshots/Screenshot%20(121).png)

## Ticket Printing 

After the user is done with his reservation. The deatils of his reservation are fetched form the booking table and are printed on a ticket which is a jpeg image. After the details are printed the user is allowed to print the ticket and store a copy of the ticket on his local device 

## Admin Control Panel

The Admin control panel provides special privliges to the admin of the website. It is protected with a amdin login prompt before accessing it so the regular user who is not an admin gets access to it. This panel allows the admin to check the reservation of all the users done so far, Add records, Deleted records and Edit existing records.The admin control panel fetches all the records form the 'booking' table and display and any the changes made are reflected in the mysql database.

Checking records
![](screenshots/Screenshot%20(117).png)

Adding and deleting records
![](screenshots/Screenshot%20(118).png)

Editing Records
![](screenshots/Screenshot%20(119).png)


