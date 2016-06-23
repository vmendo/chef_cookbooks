# COOKBOOKS

## WORKSTATION

Default recipe - setup.rb

### setup.rb

* The package named 'cowsay' is installed
* The package named 'tree' is installed
* The file named /etc/motd is created

## APACHE

Default recipe - server.rb

### server.rb

* The package named 'httpd' is installed
* The file named '/var/www/html/index.html'is created with the content 'Hello, world'
* The service named 'httpd' is started and enabled 
