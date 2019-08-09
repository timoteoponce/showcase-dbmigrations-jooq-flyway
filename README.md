# Database migrations demo	

Simple project to show the potential and setup for [JOOQ](https://www.jooq.org/) as database access layer with
[FlywayDb](https://flywaydb.org/) as migration tool.

## How to run

```
mvn clean package
```

## Internal details

  -  A local H2 database is created while building
  -  Migrations from src/main/resources/db/migrations are applied to the local database
  -  Once migrations are completed, the JOOQ-code generator consumes the local database
  -  JOOQ's generated sources are used as source elements
  -  Tests are executed using JOOQ's generated sources