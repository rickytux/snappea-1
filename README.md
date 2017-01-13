1. Ruby version
	Ruby 2.3.1 - Rails 5.0.1

2. System dependencies
	None

3. Configuration
	1. Clone the code from Git repository https://github.com/arditvula/snappea
	2. Run command "bundle install"

4. Database creation
	1. Change the database.yml default username and password
	2. Run command "rake db:create"

5. Databse initialization
	1. Run command "rake db:migrate"
	2. Run command "rake db:seed"

6. How to run a test suite
	Use CURL or a client APP like Postman. 
	
	curl -IH "Authorization: Token token="GUID" http://localhost:3000/restaurants
	curl -IH "Authorization: Token token="GUID" http://localhost:3000/restaurants/1/menu_items

	You can find the GUID in api_keys table, after you run the "rake db:seed".





