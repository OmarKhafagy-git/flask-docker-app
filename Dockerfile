# 1. Start from an official Python base image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy dependency list FIRST (for layer caching!)
COPY requirements.txt .

# 4. Install dependencies during build
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the app code
COPY . .

# 6. Document the port the app uses
EXPOSE 5000

# 7. Command to run when the container starts
CMD ["python", "app.py"]