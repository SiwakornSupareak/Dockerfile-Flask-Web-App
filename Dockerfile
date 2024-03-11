# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy only the requirements files to leverage Docker cache
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Install Flask and requests
RUN pip install Flask requests

# Make port 80 available to the world outside this container
EXPOSE 5001

# Define environment variable
ENV NAME=World

# Run the Flask application when the container launches
CMD ["python", "app.py"]