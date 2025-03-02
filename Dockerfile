# Use an official Python image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Keep the container running (useful for development)
CMD ["tail", "-f", "/dev/null"]
