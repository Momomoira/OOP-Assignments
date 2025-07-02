/*A. Roles and Privileges*/

/*Perform the below script for role and privileges creation:*/

CREATE ROLE plm_developers;

GRANT CREATE SESSION TO        plm_developers;
GRANT UNLIMITED TABLESPACE TO  plm_developers;
GRANT CREATE ANY TABLE to      plm_developers;
GRANT CREATE ANY VIEW to       plm_developers;
GRANT CREATE SYNONYM to        plm_developers;

CREATE ROLE plm_testers;

GRANT CREATE SESSION TO        plm_testers;
GRANT UNLIMITED TABLESPACE TO  plm_testers;
GRANT SELECT ANY TABLE to      plm_testers;

/*2. Create 2 users (francis and jose) and assign the role plm_developers.*/
/*3. Create 2 users (maria and josefa) and assign the role plm_testers.*/
  
  
CREATE USER francis IDENTIFIED BY    "cispass1";
CREATE USER jose IDENTIFIED BY       "jose123";
CREATE USER maria IDENTIFIED BY      "maria";
CREATE USER josefa IDENTIFIED BY     "josefa";


GRANT plm_developers TO  francis;
GRANT plm_developers TO  jose;
GRANT plm_testers TO     maria;
GRANT plm_testers TO     josefa;

/*B. Database and table creation*/

/*1. Create a user (PLM_INFO_SYSTEM) and assign the role plm_developers.*/

CREATE USER PLM_INFO_SYSTEM IDENTIFIED BY   "plminfosystem";
GRANT plm_developers TO                     PLM_INFO_SYSTEM;

GRANT UNLIMITED TABLESPACE TO               PLM_INFO_SYSTEM;
GRANT CREATE ANY TABLE to                   PLM_INFO_SYSTEM;
