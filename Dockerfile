# # Use the Python 3.8 slim image as the base
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Install Git and clone your source code from Git
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/NithinTLC/Test1.git

# Set the working directory to the cloned repository's directory
WORKDIR /app/Test1

# Install any Python dependencies your script needs
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Run your script (adjust the filename as needed)
CMD ["python", "test.py"]

