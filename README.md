### Ruby version

Ruby 2.3.1 - Rails 5.0.1

### System dependencies

None

### Configuration

Clone the code from Git repository https://github.com/arditvula/snappea
And then run
```sh
$ bundle install
```

### Database setup

Change the database.yml default username and password
And then run
```sh
$ rake db:create
```

### Database initialization

```sh
$ rake db:migrate
$ rake db:seed
```

### How to run a test suite

Use CURL or a client APP like Postman. You can find the GUID in api_keys table, after you run the `rake db:seed.
```sh
$ curl -IH "Authorization: Token token="GUID" http://localhost:3000/restaurants
$ curl -IH "Authorization: Token token="GUID" http://localhost:3000/restaurants/1/menu_items
```



