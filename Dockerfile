# syntax=docker/dockerfile:1
FROM python:3.7.10-slim-buster
WORKDIR /app
# copying requirements file first and installing them does not lead to docker 
# installing dependencies again when code is changed and image is rebuilt
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
# CMD ["python3", "app.py", "--host=0.0.0.0"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
