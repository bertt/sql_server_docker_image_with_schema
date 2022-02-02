# Create SQLServer Docker image with schema

1] Build Docker image

```
$ docker build -t custom_sqlserver_database . 
```

2] Run Docker image

```
$ docker run -it -e SA_PASSWORD=Iqaluit900 -p 1433:1433 custom_sqlserver_database
```

3] Connect to database

```
$ sqlcmd -S localhost -U sa -Q "SELECT * FROM mydatabase.myschema.mytable"
Password: *******
id          name
----------- --------------------------------------------------

(0 rows affected)
```
