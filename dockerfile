# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory into the container
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
