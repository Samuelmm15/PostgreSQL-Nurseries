# PostgreSQL-Nurseries
This repository contains the implementation of the third practice of the course `Administración y Diseño de Bases de Datos`. This practices consists into the implementation of the database of a nursery. This is the first practice that uses PostgreSQL to implement the database.

## 📝 What is PostgreSQL?

PostgreSQL is a powerful, open source object-relational database system with over 30 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance. There is a wealth of information to be found describing how to install and use PostgreSQL through the official [documentation](https://www.postgresql.org/docs/).

## 📸 Entity-Relationship Model

![Entity-Relationship Model](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/9a5dd5ef-9349-41e3-b1dc-505cecbe0070)

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
      
      ![Zone-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/ae0cb22c-039e-4380-ad2d-97673cdccfb6)

    - **Nurseries table:** This table contains the different nurseries of the nursery.\

      ![Nursery-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/ee0771f0-04b0-4e07-90a9-0807c64a4601)

    - **Company table:** This table contains the different companies that work with the nursery.\

      ![Company-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/b069a0d2-9f76-499a-907c-50072115a0a2)

    - **Task table:** This table contains the different tasks that the employees of the nursery can do.\

      ![Task-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/082e4691-d075-4f89-b1b8-b2b03010f42b)

    - **Employee table:** This table contains the different employees of the nursery.\

      ![Employee-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/433fa687-9518-45ab-964e-86a1df94e1e9)

    - **Works table:** This table contains the different works that the employees of the nursery do.\

      ![Work-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/50af4222-d1e8-4700-923b-0db62e5347f1)

    - **Customer table:** This table contains the different customers of the nursery.\

      ![Customer-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/db8d5584-826c-4f8c-8cc2-d442004cb6bd)

    - **Product table:** This table contains the different products that the nursery sells.\

      ![Product-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/725ac1c0-10fe-4af6-ad4b-9e859d100121)

    - **Buys table:** This table contains the different buys that the customers of the nursery do.\

      ![Buy-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/864c4464-7885-4bfd-9407-022748f2953f)

    - **Assigned table:** This table contains the different tasks that the employees of the nursery have assigned.\

      ![Assigned-Table](https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/d826b349-8a6d-49e8-b4e8-892c2b0293a1)


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

## 💥 Example of executation of the app

https://github.com/Samuelmm15/PostgreSQL-Nurseries/assets/72341631/1c1fbeae-8306-4a45-bf3b-98f1862ed740

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

