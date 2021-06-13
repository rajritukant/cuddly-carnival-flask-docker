# syntax=docker/dockerfile:1
FROM python:3.7.10-slim-buster
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
# CMD ["python3", "app.py", "--host=0.0.0.0"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
