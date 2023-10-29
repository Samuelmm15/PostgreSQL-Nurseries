# PostgreSQL-Nurseries
This repository contains the implementation of the third practice of the course `Administración y Diseño de Bases de Datos`. This practices consists into the implementation of the database of a nursery. This is the first practice that uses PostgreSQL to implement the database.

## 📝 What is PostgreSQL?

PostgreSQL is a powerful, open source object-relational database system with over 30 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance. There is a wealth of information to be found describing how to install and use PostgreSQL through the official [documentation](https://www.postgresql.org/docs/).

## 📸 Entity-Relationship Model



## 📸 Relational Model

![Relational Model - Nurseries](https://github.com/Samuelmm15/PostgreSQL-Nurseries/blob/main/P3.png)

## 🏷️ Description of the script implemented at PostgreSQL

This script contains the implementation of the basic structure of the database that you can see at the [image](#relational-model), the creation of the tables, the insertion of the data and some examples of the "DELETE" operation. The database consists in a nursery system that has zones, plants, clients, employees, etc. The script is divided in the following sections:

- **Creation of the database:** This section contains the creation of the database and the connection to it.

- **Delete data:** This section contains the "DROP" operation that comprobes if the tables that we are going create were built before.

- **Creation of the tables:** This section contains the creation of the tables of the database.

  - **Insertion of the data:** This section contains the insertion of the data into the tables.\
    As we can see in the different images attached below we have the different tables of the database and the data that we have inserted into them.

    - **Zones table:** This table contains the different zones of the nursery.\
      ![Zones table](
    - **Nurseries table:** This table contains the different nurseries of the nursery.\
      ![Nurseries table](
    - **Company table:** This table contains the different companies that work with the nursery.\
      ![Company table](
    - **Task table:** This table contains the different tasks that the employees of the nursery can do.\
      ![Task table](
    - **Employee table:** This table contains the different employees of the nursery.\
      ![Employee table](
    - **Works table:** This table contains the different works that the employees of the nursery do.\
      ![Works table](
    - **Customer table:** This table contains the different customers of the nursery.\
      ![Customer table](
    - **Product table:** This table contains the different products that the nursery sells.\
      ![Product table](
    - **Buys table:** This table contains the different buys that the customers of the nursery do.\
      ![Buys table](
    - **Assigned table:** This table contains the different tasks that the employees of the nursery have assigned.\
      ![Assigned table]( 

## 🔨 How to install PostgreSQL

To install PostgreSQL in your computer with Ubuntu or similar, you have to follow the next steps:

1. Open the terminal and type the following command:

   ```bash
   sudo apt-get install postgresql postgresql-contrib
   ```

2. After that, you have to create a new user with the following command:

   ```bash
    sudo -u postgres createuser --interactive
    ```

3. Then, you have to create a new database with the following command:

   ```bash
   sudo -u postgres createdb <database_name>
   ```  

4. Finally, you have to connect to the database with the following command:

   ```bash
    sudo -u postgres psql
    ```

To install PostgreSQL in your computer with MacOs, you have to follow the next steps:

1. Open the terminal and type the following command:

   ```bash
   brew install postgresql
   ```

2. After that, you have to create a new user with the following command:

   ```bash
    sudo -u postgres createuser --interactive
    ```

3. Then, you have to create a new database with the following command:

   ```bash
   sudo -u postgres createdb <database_name>
   ```  

4. Finally, you have to connect to the database with the following command:

   ```bash
    sudo -u postgres psql
    ```

## 📦 How to run the script

To run the script you have to follow the next steps:

1. Open the terminal and type the following command:

   ```bash
   psql -U <user_name> -d <database_name> -a -f <script_name>
   ```

Another way to run the script is using the PostgreSQL interactive terminal. To do that, you have to follow the next steps:

1. Open the terminal and type the following command:

   ```bash
   psql -U <user_name>
   ```

2. After that, you have can run the script with the following command:

   ```bash
   \i <script_name>
   ```

## 📚 Reference

- [PostgreSQL Documentation](https://www.postgresql.org/docs/).
- [PostgreSQL Tutorial](https://www.postgresqltutorial.com/).
- [PostgreSQL Tutorial - Tutorialspoint](https://www.tutorialspoint.com/postgresql/index.htm).
- [PostgreSQL Tutorial - w3resource](https://www.w3resource.com/PostgreSQL/tutorial.php).
- [PostgreSQL Tutorial - Guru99](https://www.guru99.com/postgresql-tutorial.html).
- [PostgreSQL Tutorial - javatpoint](https://www.javatpoint.com/postgresql-tutorial).

## 📝 License

This project is under the Creative Commons Legal Code license, for more information consult the [LICENSE](./LICENSE) file.

## 📌 Authors
[Samuel Martín Morales](alu0101359526@ull.edu.es)\
[Jorge Domínguez González](alu0101330600@ull.edu.es)

