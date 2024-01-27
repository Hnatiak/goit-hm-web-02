# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set the working directory to /app
ENV APP_HOME /app

WORKDIR $APP_HOME

# Copy the current directory contents into the container at /app
# COPY pyproject.toml $APP_HOME/pyproject.toml
# COPY poetry.lock $APP_HOME/poetry.lock

RUN pip install poetry
# RUN poetry config virtualenvs.create false && poetry install --only main
# Install any needed packages specified in requirements.txt
# RUN pip install --upgrade pip setuptools
# RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install Flask  # Add this line to install Flask

COPY . .

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME PersonalAssistant

# Run main.py when the container launches
CMD ["python", "main.py"]