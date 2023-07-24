# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the port on which your Flask app will run (must match the port specified in your Python file)
EXPOSE 5002

# Set the entry point command to run your Flask app
CMD ["python", "app.py"] # Replace "your_python_file.py" with the actual name of your Python file
