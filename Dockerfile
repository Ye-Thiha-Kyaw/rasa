# Dockerfile

# Use the official Rasa image as the base image
FROM rasa/rasa:latest

# Set the working directory inside the Docker container
WORKDIR /app

# Copy all project files to the working directory
COPY . .

# Install any additional dependencies
RUN pip install -r requirements.txt

# Expose the port Rasa server will run on
EXPOSE 5005

# Define the command to start the Rasa server
CMD ["rasa", "run", "-m", "models", "--enable-api", "--cors", "*", "--debug"]
