# Pull the base image
# FROM r-base:3.6.2
FROM trestletech/plumber:latest

# Creating directory (this wouldn't be even necessary)
RUN mkdir /home/api

# Install required packages
# RUN R -e "install.packages(c('plumber'))"

# Copy selected files into a folder in the image called app
COPY plumber.R /home/api

# This is helpful if you will not define the full path for these files in your scripts
WORKDIR /home/api

# Exposing port 8000 for the API
EXPOSE 8000

# Running the API script inside our container
CMD R -e "source('/home/api/plumber.R')"
