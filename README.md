## ATM_Project for Azure

Backend REST ATM application simulating simple Bank using Java Spring Boot with JWT authentication and mysql database

##  Prerequisites

First thing to do is to setup mysql server in you azure portal.

####    MySql for Azure

1. Find Azure Database for MySql in you searcher field and add new one

2. Fill all necessary fields like names, passwords, location etc. You can leave datasource as blank.
Also you don't need much space, so basic configuration with 1 core and 5 GB should be enough.

3. After resource is deployed you can check you connection info. To do that go to your resource page and pick database service you just   made.

4. Next step is to make *"atm_db"* Database inside our brand new mysql server. To do this you can either use terminal or follow this        tutorial and setup your connection from GUI app like MySql Workbench, or DBeaver. https://docs.microsoft.com/pl-pl/azure/mysql/connect-workbench

5. If you face connecetion issues like you can try disabling security options like this:

*We don't need to create specific tables. Spring boot application will handle this while deployed*

##  Installation: Deploy app on Azure
