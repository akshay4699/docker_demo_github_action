# Use official python image for the docker file
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into container at /app
COPY . /app

# Install any needed packeges specified in requirements.txt
RUN pip install flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when container is lunches

CMD [ "python","flask" ]