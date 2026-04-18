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
weight - FLOAT 10.5
<br>
customers_name - FOREIGN KEY

## customer Table
Client_ID PRIMARY_KEY
<br>
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
<br>
first_name - VARCHAR
<br>
last_name VARCHAR
<br>
phone_number - VARCHAR
<br>
email_address - VARCHAR
<br>

## Walks Table

walk_ID PRIMARY KEY
<br>
walk_date DATE
<br>
walk_time TIME
<br>
duration - FLOAT
<br>
status - VARCHAR
<br>
<br>
dog_ID - FOREIGN KEY
<br>
Walker_ID FOREIGN KEY
<br>

# questions

a) What should be the main entities in your database (which will translate into tables)? Aim for at least three, but not more than five, to keep things from getting overly complicated.
<br>
the main entities are walkers, customers, and dogs
<br>
<br>
b) What attributes (column names) belong to each of those entities? It may be helpful
to consider an example of a single record belonging to that entity – what are the
pieces of information that the record should include?
<br>
<br>
dogs: name, breed, steps, size and owner(customer_name) name
customer: Client ID, first name, last name, phone number and email
walker: walker ID, first name, last name, phone number, email
<br>
<br>
c) What entities will have relationships to each other? That is, what information will need to be reassembled together when data is retrieved from the database?
<br>
<br>
the dog and customer entities will have relationships with each other, the information will be the owners name and the dogs name to find the connection between which customer owns the dog and which dog is the customers pet.
<br>
<br>
d) Can you identify any possible many-to-many relationships between your tables
that will need to a resolving table?
the dog and walkers entities will have a many-to-many relationships, many dogs can have many walkers, and many walkers can have many dogs, they will not need a resolving table in our opinion.
