FROM python:3.11.0a6-alpine3.15

# Update package repositories
RUN apk update

# Install build dependencies and bash
RUN apk add gcc musl-dev linux-headers bash

WORKDIR /code

# Copy requirements and install dependencies
COPY requirements.txt /code
RUN pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Set the command to run your application
CMD python app.py
