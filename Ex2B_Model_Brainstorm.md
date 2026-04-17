# Requirements and Conceptual Model
Teodoro Juarez, Will Poindexter, Antwaushea Sago, Shaquan Bowens

## Data to track: 

The end user is Lana, she needs to be able to track which dog has the most step in a day

# Logical Model

## Dogs Table
dog_breed - VARCHAR(10) 
<br>
dog_name - VARCHAR(20) - chip
<br>
steps in a day - INT - 10 
<br>
size(small, medium,large) - VARCHAR() 
<br>
weight - FLOAT 10.5
<br>
customers_name - FOREIGN KEY

## customer Table
Client_ID PRIMARY_KEY

first_name - VARCHAR
<br>
last_name VARCHAR
<br>
phone_number - VARCHAR
<br>
email_address - VARCHAR
<br>
Dog - FOREIGN KEY

## Walkers Table
walker_ID PRIMARY KEY
first_name - VARCHAR
<br>
last_name VARCHAR
<br>
phone_number - VARCHAR
<br>
email_address - VARCHAR
<br>
