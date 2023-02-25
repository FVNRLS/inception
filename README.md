# Inception
Project Inception is a 42 project that challenges students to create a website for a fictional company that provides dream-sharing technology. This README will provide an overview of the project and how to set it up.

Table of Contents
Requirements
Installation
Usage
Contributing
Credits
License
Requirements
To run Project Inception, you will need:

A modern web browser
A web server, such as Apache or Nginx
PHP 7.3 or higher
MySQL 5.7 or higher
Installation
To install Project Inception, follow these steps:

Clone the repository to your web server's document root:
sh
Copy code
git clone https://github.com/username/project-inception.git /var/www/html/project-inception
Create a new database in MySQL for the project:
sql
Copy code
CREATE DATABASE project_inception;
Import the database schema from the database/schema.sql file:
sh
Copy code
mysql -u root -p project_inception < /var/www/html/project-inception/database/schema.sql
Copy the config/database.sample.php file to config/database.php and update the values to match your MySQL server configuration:
php
Copy code
return [
    'host' => 'localhost',
    'username' => 'root',
    'password' => 'password',
    'database' => 'project_inception',
];
Usage
To use Project Inception, navigate to the website URL in your web browser. The website will display a homepage with information about the dream-sharing technology and a link to the login page.

You can create a new account or log in with an existing account to access the dashboard. From the dashboard, you can create new dreams, view your past dreams, and update your account settings.

Contributing
If you would like to contribute to Project Inception, please follow these guidelines:

Fork the repository on GitHub
Create a new branch for your changes
Make your changes and commit them to your branch
Push your branch to your fork
Submit a pull request from your branch to the main repository
Please include a detailed description of your changes and why you made them.

Credits
Project Inception was created by Your Name Here. Thank you to the 42 staff and community for their support and feedback.

