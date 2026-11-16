# pull base image
FROM python:3.16-rc-slim

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1 
# disables an automatic check for pip updates each time
ENV PYTHONDONTWRITEBYTECODE 1  
# Python will not try to write .pyc files
ENV PYTHONUNBUFFERED 1  
# ensures our console output is not buffered by Docker

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project it takes two parameter, what file to copy into the image and where to put the copied files
COPY . .