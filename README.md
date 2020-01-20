## ATM_Project for Azure

Backend REST ATM application simulating simple Bank using Java Spring Boot with JWT authentication and mysql database

##  Prerequisites

**GIT**

**AzureCLI**

##  Installation: Database

**First thing to do is to setup mysql server in you azure portal.**

####    MySql for Azure

1. Find Azure Database for MySql in you searcher field and add new one

![Search for mysql](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/db_search.JPG)

2. Fill all necessary fields like names, passwords, location etc. You can leave datasource as blank.
Also you don't need much space, so basic configuration with 1 core and 5 GB should be enough.

![Fill Fields](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/db_fill_fields.JPG)

![Configuration](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/db_configuration.JPG)

3. After resource is deployed you can check you connection info. To do that go to your resource page and pick database service you just   made.

![Informations](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/db_made.JPG)

4. Next step is to make ***"atm_db"*** Database inside our brand new mysql server. To do this you can either use terminal or follow this        tutorial and setup your connection from GUI app like MySql Workbench, or DBeaver. https://docs.microsoft.com/pl-pl/azure/mysql/connect-workbench

5. If you face connection issues like SSL issues, or IP you can try disabling security options like this:

![Security](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/db_security.JPG)

***We don't need to create specific tables. Spring boot application will handle this while deployed***

##  Installation: Deploy app on Azure

**To deploy application on Azure firstly we must make sure it is working locally***

#### Installing application on local machine

1. Clone this repository. Run
```shell
git clone https://github.com/potatojesz/ATM_Project_Azure.git
```

2. Setup you *application.properties* file. In */src/main/resources* Use your connection information from Database installation: 3rd point

![Setup properties](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/app_properties.JPG)

3. Run application. It should start by default on port 8080. Also there should be tables made in you Azure database, you can check it from eg. MySql Workbench. (By default application will fill itself with basic data, so don't worry about it)
```shell
./mvnw spring-boot:run
```

![Application started](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/app_started.JPG)

4. You can check http://localhost:8080/swagger-ui.html#/ .  It's interactive documentation of REST API you just deployed on your local machine.

#### Deploying on Azure

## How to use swagger
