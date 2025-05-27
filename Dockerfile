# --- START OF FILE Dockerfile ---
# Use an official Python runtime as a parent image
FROM public.ecr.aws/docker/library/python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
# Ensure boto3 and pandas are in your requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY CNBC_Fetcher.py .

# Command to run the application
CMD ["python", "CNBC_Fetcher.py"]
# --- END OF FILE Dockerfile ---
