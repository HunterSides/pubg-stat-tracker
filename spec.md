# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Sinatra used in accordance with Rack
- [x] Use ActiveRecord for storing information in a database - Active record used to give CRUD functionality to models
- [x] Include more than one model class (e.g. User, Post, Category) - Game and User model created 
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User was created with a has_many Games
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) Games created with belongs_to User
- [x] Include user accounts with unique login attribute (username or email) User created with Username/password/email
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Crud functionality fully functional with the Games model
- [x] Ensure that users can't modify content created by other users - only the user that is logged in can access their saved games.
- [x] Include user input validations - only created accounts are able to login with previously saved credentials. 
- [] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code 

Confirm
- [x] You have a large number of small Git commits - commits were done when aspects of app functionality were completed
- [x] Your commit messages are meaningful - explained each commit after completion of certain functionality 
- [x] You made the changes in a commit that relate to the commit message - commit messages were descriptive 
- [x] You don't include changes in a commit that aren't related to the commit message - commit messages weren't off topic 