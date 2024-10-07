#!/bin/bash

# Directory to save the images
SAVE_DIR=~/Documents/portfolio/static/images/sections/skills

# Array of logo URLs
logo_urls=(
    "https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"
    "https://kubernetes.io/images/favicon.png"
    "https://tomcat.apache.org/res/images/tomcat.png"
    "https://www.oracle.com/a/ocom/img/obic-java-cup.svg"
    "https://spring.io/img/spring-2.svg"
    "https://maven.apache.org/images/maven-logo-black-on-white.png"
    "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"
    "https://www.w3.org/html/logo/badge/html5-badge-h-solo.png"
    "https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg"
    "https://www.thymeleaf.org/images/thymeleaf.png"
    "https://hibernate.org/images/hibernate-logo.svg"
    "https://upload.wikimedia.org/wikipedia/commons/9/93/Amazon_Web_Services_Logo.svg"
    "https://www.nginx.com/wp-content/uploads/2020/05/NGINX-product-icon.svg"
    "https://www.python.org/static/community_logos/python-logo-generic.svg"
    "https://www.mysql.com/common/logos/logo-mysql-170x115.png"
    "https://tailwindcss.com/_next/static/media/tailwindcss-mark.79614a5f61617ba49a0891494521226b.svg"
    "https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png"
    "https://angular.io/assets/images/logos/angular/angular.svg"
)

for url in ${logo_urls[@]}; do
	wget -P "$SAVE_DIR" "$url"	
done
