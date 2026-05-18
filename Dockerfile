# Use an official Ubuntu image as a base
FROM ubuntu:latest
# Update packages and install Apache2
RUN apt update && apt install -y apache2
# Copy our custom index.html to the Apache web root
COPY index.html /var/www/html/index.html
# Expose port 80 to the outside world
EXPOSE 80
# Command to run Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
