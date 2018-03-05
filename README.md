# MMSE (Mini Mental State Exam)

An assessment tool used by physicians to assess patent's cognitive function.
Includes user Authentication and reset password; automatically calculate score and inserts into a bar graph.
----------------------
Technologies: Ruby, Ruby on Rails, HTML, CSS, JS, Bootstrap, Git, Heroku, and Created Seed files, PostgreSQL database, Bcrypt Authentication.

----------------------

* Ruby version: 2.4.2

* Rails version: 5.14

-------------------------


# To update the Database in local host:
- rake db:migrate
- rake db:questions_seed
- rake db:subjects_seed

# To update the Database in Heroku:
- heroku run rake db:migrate
- heroku run rake db:questions_seed
- heroku run rake db:subjects_seed
-------------------------

* Deployment instructions:

Local host for Ruby on Rails: http://localhost:3000/

OR

https://pure-chamber-10247.herokuapp.com
