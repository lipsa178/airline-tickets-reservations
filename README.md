# airline-tickets-reservations
Airline online tickets reservations database scheme for commercial flights

## Installation
* Install Oracle 11g Database: [database](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)
* Install Oracle SQL Developer: [sql developer](http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html)
* Install Oracle Data Modeler: [data modeler](http://www.oracle.com/technetwork/developer-tools/datamodeler/overview/index.html)
* Start server: [help](https://stackoverflow.com/questions/13892261/get-started-link-does-not-work-in-oracle-11g-server)
* If you are not familiar with oracle tools you can watch video: [guide](https://www.youtube.com/watch?v=Fr4pPlZnbFI)
* Run generated ddl from ddl folder
* Run elon_scene.sql to test single ticket reservation

## DDL Generation
* Open project with Oracle Data Modeler from source folder
* Right click and show logical or relational data model
* Make further modifications
* Generate from logical -> relational -> ddl and backwards, as you wish
* Note that views were created inside relational model, you can delete them if they cause any confusion
