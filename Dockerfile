# FROM python:3.11-slim

# ENV APP_HOME /app

# WORKDIR $APP_HOME


# RUN pip install poetry

# COPY . .

# EXPOSE 3000

# ENV NAME PersonalAssistant

# CMD ["python", "main.py"]


# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set the working directory to /app
ENV APP_HOME /app
WORKDIR $APP_HOME

# Install the required dependencies
RUN pip install termcolor

# Copy the current directory contents into the container at /app
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME PersonalAssistant

# Run main.py when the container launches
CMD ["python", "main.py"]