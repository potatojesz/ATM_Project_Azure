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

**To deploy application on Azure firstly we must make sure it is working locally**

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

1. Login to your Azure account using AzureCLI. Follow the instructions to complete the sign-in process.
```shell
az login
```

2. By default pom.xml is filled with my own properties. You can change them if you want different names/options.

![POM.XML](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/app_pom.JPG)

3. After any changes (even if no changes don't worry to run it anyway) you should rebuild you application.
```shell
./mvnw clean package
```

4. Now is time to deploy our application. Run this
```shell
./mvnw azure-webapp:deploy
```

5. You can check in Azure portal if your application is listed there

![Azure portal](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/app_azure_portal.JPG)



## How to use swagger

Default data in database are 2 accounts (_locally you can change them in ```data.sql``` file in resources_):
```json
{
    "cardNumber": "0000000000000000",
    "balance": "500000",
    "pin": "0000"
}
```
```json
{
    "cardNumber": "1111111111111111",
    "balance": "99999",
    "pin": "1234"
}
```


1. First you must authenticate. To do this please pick auth controller and click *Try It Out* in *atm/auth* method.

![Try It Out](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_tryit.JPG)

2. Please fill data with account you want to use, and execute method.

![Fill and execute](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_execute.JPG)

3. You must now copy your JsonWebToken, It is used to authenticate to our REST API.

![Copy](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_copy_token.JPG)

4. Now is time to authorize. To do this please click on *Authorize* button.

![Authorize](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_authorize.JPG)

5. Now you must paste token you have copied earlier. Preceded with *Bearer* keyword, like this.

![Paste token](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_paste_token.JPG)

6. Now you are ready to use other rest methods. Just like you used authentication method before.

![Other methods](https://github.com/potatojesz/ATM_Project_Azure/blob/master/screenshots/swagger_other_methods.JPG)
