# Use an official Python image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose Flask port
EXPOSE 5000

# Run Flask (for Windows, specify host 0.0.0.0)
CMD ["python", "src/app.py"]
