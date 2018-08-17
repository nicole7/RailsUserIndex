# README
Rails User Index Challenge - 20 Spokes

Part 1.
Using Devise, create a simple Rails app that allows a user to register and sign in.
Once signed in, the user should be taken to an index of all users.
The user index should not be accessible unless you are signed in.

Part 2.
A user should have a first name, a last name, and a favorite color.
Add validations to make the users first name and last name required. The favorite color should
be optional.
Using RSpec, add some simple specs to test these validations.

Part 3.
An edit button should appear next to to the signed in user, that takes them to an edit page.
The signed in user should should only be allowed to edit their own information.
Use Pundit to achieve this.

Resources:
https://github.com/plataformatec/devise
https://github.com/rspec/rspec-rails
https://github.com/varvet/pundit
