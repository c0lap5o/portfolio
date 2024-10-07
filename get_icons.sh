#!/bin/bash

# Directory to save the images
SAVE_DIR=~/Documents/portfolio/static/images/sections/skills

# Array of logo URLs
logo_urls=(
    "https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"
    "https://tomcat.apache.org/res/images/tomcat.png"
    "https://www.oracle.com/a/ocom/img/obic-java-cup.svg"
    "https://spring.io/img/spring.svg"
    "https://e7.pngegg.com/pngimages/917/651/png-clipart-apache-maven-feathers-tech-companies.png"
    "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"
    "https://www.w3.org/html/logo/badge/html5-badge-h-solo.png"
    "https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg"
    "https://www.thymeleaf.org/images/thymeleaf.png"
    "https://seeklogo.com/images/H/hibernate-logo-8C95C75A24-seeklogo.com.png"
    "https://upload.wikimedia.org/wikipedia/commons/9/93/Amazon_Web_Services_Logo.svg"
    "https://static-00.iconduck.com/assets.00/nginx-icon-223x256-ghqr4o29.png"
    "https://clipart-library.com/new_gallery/289-2896071_python-logo-png-165709.png"
    "https://www.mysql.com/common/logos/logo-mysql-170x115.png"
    "https://upload.wikimedia.org/wikipedia/commons/d/d5/Tailwind_CSS_Logo.svg"
    "https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png"
    "https://angular.io/assets/images/logos/angular/angular.svg"
)

for url in ${logo_urls[@]}; do
	wget -P "$SAVE_DIR" "$url"	
done
