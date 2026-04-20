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

## question 4
Reconvene with your small group and take turns reviewing each of your diagrams.
Have one person open Ex2B_Model_Brainstorm.md and take notes on your group’s
conversation as you discuss the question below.
<br>
<br>
a) What are the similarities between individual diagrams? What turned out the same?
<br>
we all pretty much got the same Customer and walker table
<br>
<br>
b) Where did each of your diagrams differ? What explanation do you have for those
differences? What might be the pros and cons of each approach?
<br>
<br>
Me (Jimmy), Will, Shaq and shay all had different Dog tables, mostly the same but Will added special_notes column and Shaq added steps in a day.
<br>
<br>
Pros and Cons of Wills table:
<br>
he added 'Payment' would be a good table to have, a con would be that I dont think we really need special notes for the dog. 
<br>
<br>
pros of Shaqs Table:
<br>
Shaq is pretty much the same as mine but he has steps per day, thats a good pro but I feel like maybe we both could have added more.
<br>
<br>
pros and cons of Shaqs Table:
<br>
Shaq is pretty much the same as mine but he has steps per day, thats a good pro but I feel like maybe we both could have added more.
<br>
<br>
pros and cons Shays Table:
<br>
Shays is pretty much the same as as mine and shaqs as well but she added start_date for walkers, distance_miles for walks table and a couple other columns in the other two tables she added, the steps in a day for the dog table is a good pro but I feel like we didnt need the chop column.
<br>
<br>
pros and cons my (Jimmy) Table:
<br>
Mine is probalby the most basic one with the least amount of columns as to keep it minimalist, but I could have added a couple more columns related to age for the dog and I liked the idea of adding an emergency contact from shays, pros of simplicity but it is also a con since it could have more I think, so the simpleness is a pro and a con.
