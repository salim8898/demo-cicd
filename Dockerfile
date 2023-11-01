# Use a slim Python image as the base
FROM python:3-slim

# Set the working directory in the container
WORKDIR /app

# Copy your Flask application code and static web content to the container
COPY app.py /app/
COPY templates /app/templates/

# Install any necessary Python dependencies
RUN pip install Flask

# Expose the port your Flask app will run on
EXPOSE 80

# Define the command to run your Flask application
CMD ["python", "app.py"]
