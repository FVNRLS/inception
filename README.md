# Inception
Project Inception is a 42 project that challenges students to create a website for a fictional company that provides dream-sharing technology. This README will provide an overview of the project and how to set it up.

## To run Inception, you will need:
- A modern web browser
- A web server, such as Apache or Nginx
- PHP 7.3 or higher
- MySQL 5.7 or higher 

## Installation
- To install Project Inception, follow these steps:

  * Clone the repository to your web server's document root: <br>
`  git clone https://github.com/username/project-inception.git /var/www/html/inception` <br>
  
  * Create a new database in MySQL for the project: <br>
  `sql`<br> 
  `CREATE DATABASE project_inception;` <br>
  * Import the database schema from the database/schema.sql file: <br>
 `mysql -u root -p project_inception < /var/www/html/project-inception/database/schema.sql <br>`  
  * Copy the config/database.sample.php file to config/database.php and update the values to match your MySQL server configuration: <br>
  

          return [
              'host' => 'localhost',
      
              'username' => 'root',
      
              'password' => 'password',
      
              'database' => 'project_inception',
    
          ];
  
  
  ## Usage
  To use Inception, navigate to the website URL in your web browser. The website will display a homepage with information about the dream-sharing technology and a link to the login page.
