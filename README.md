User story 1

As a user
I would like to see a list of saved bookmarks

bundle
```	```


 ### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

