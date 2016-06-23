# COOKBOOKS

## WORKSTATION

Default recipe - setup.rb

### setup.rb

* The package named 'cowsay' is installed
* The package named 'tree' is installed
* The file named /etc/motd is created reading info from system using OHAI

## APACHE

Default recipe - server.rb

### server.rb

* The package named 'httpd' is installed
* The file named '/var/www/html/index.html'is created with the content 'Hello, world'
* The service named 'httpd' is started and enabled 

# TEST 

Example: Run kitchen verify
<br>Test configuration at "cookbooks/workstation/.kitchen.yml"
<br> It will use "cookbooks/workstation/test/integration/default/serverspec/default_spec.rb"

## WORKSTATION

* "tree should be installed"           --> OK
* "cowsay should be installed"         --> FAIL
* "git should be installed"            --> OK
* "/etc/motd should be_owned_by'root'" --> OK

## APACHE

* "httpd should be_installed"                                                    --> OK
* file '/var/www/html/index.html' should be_file && should contain 'Hello World' --> OK
* service 'httpd' should be_enabled && should be_running                         --> OK
