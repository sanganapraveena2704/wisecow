# Use a Python base image (assuming the Wisecow app is Python-based)
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the app's port (assuming app runs on port 8000)
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
