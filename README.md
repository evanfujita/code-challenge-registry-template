# Assignment 

Create a Ruby on Rails application that would allow a coordinator to track participants across multiple registries.  

A registry is uniquely identified by: 
  - name  
  - location  

Registry can be in an open or a closed state.  

Each registry, can have multiple coordinators where each coordinator is identified uniquely by their email address. Coordinators also have: 
  - name 
  - phone number 
  
Same coordinator can be assigned to multiple registries. 

Participant is identified by: 
  - name 
  - gender 
  - date of birth 

A participant can be enrolled in multiple open registries. But, they can't be enrolled on a same registry more than once. 

For contacting a participant later, during enrollment following information is needed:  
  - date of enrollment 
  - method of contact (phone or email) 
  - remarks  
  - coordinator that performed the enrollment. 

As a user, coordinator should be able to setup registries and manage associated coordinators. 

A coordinator can manage all coordinators and participants.  

Coordinator can enroll participants into a registry and see the list of participants for a given registry, grouped by the coordinator that enrolled them. 

Authentication/Authorization is not required. 

## Additional Questions
  - Provide sql for aggregate count of participants by year of birth. 
  - Provide sql for aggregate count of participants by coordinator and gender. 
  - Export participants for each coordinator in a csv format. 

Timeline: 2 days (48 hrs)

## Notes

Please do not change the following dependency versions in Gemfile or Gemfile.lock:
  - Ruby version 2.7.0
  - Rails 6.0.2.1
  - Database: Sqlite3
  
We expect to execute the following commands to get the app up and running on a standard Linux/MacOS environment with Ruby 2.7.0 and Sqlite3 installed.

`bundle install`

`yarn`

`rails db:migrate`

`rails server`

Then on a browser window, the app should be accessible at http://localhost:3000/

---------------------------------

My Notes:

CSV file exports both coordinators and participants but without designation.

Best attempt at SQL aggregate functions below:

SQL:
- aggregate count of participants by year of birth
  
    SELECT year(dob), COUNT(*) FROM participants
    GROUP BY year(dob)

- aggregate count of participants by coordinator and gender

    SELECT COUNT(*) FROM participants
    GROUP BY coordinator, gender



This was an excellent challenge--Thank you for this opportunity!
