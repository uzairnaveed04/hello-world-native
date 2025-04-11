FROM python:3.9-alpine

# Set working directory to match your folder name
WORKDIR /app

# Copy everything to the container's /App directory
COPY . .

# Install Flask only (no build tools)
RUN pip install --no-cache-dir flask

EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
