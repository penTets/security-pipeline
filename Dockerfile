#Use the official PHP image from the Docker Hub
FROM php:8.3-apache

#Copy the PHP files into the container
COPY . /var/www/html/

#Expose port 80
EXPOSE 80

#Start Apache in the foreground
CMD ["apache2-foreground"]


#Dastardly
FROM public.ecr.aws/portswigger/dastardly:latest

USER root
