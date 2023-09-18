#Base Image 
FROM python:3.11

# Creating Workdir
WORKDIR /app

#Copy the requirements file
COPY requirements.txt .

# install the dependencies
RUN pip install -r requirements.txt

# Copy the code into the container
COPY . .

# Expose the port for the flask application 
EXPOSE 5000

# Run the flask application 
CMD ["python" , "main.py"]
