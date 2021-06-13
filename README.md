# Flask and Docker Introduction

This repo has been updated to work with `Python v3.7` and up.

### How To Run

1. Create virtualenv:

```
$ python3 -m venv env
```

2. Then run the command:

```
$ .\env\bin\activate
```

3. Then install the dependencies:

```
$ (env) pip install -r requirements.txt
```

4. Finally start the web server:

```
$ (env) python app.py
```

This server will start on port 5000 by default. You can change this in `app.py` by changing the following line to this:

```python
if __name__ == "__main__":
    app.run(debug=True, port=<desired port>)
```

5. build docker image using

```
docker build --tag <image-name>:<image-tag> .
```

6. run the container using

```
docker run -p 5000:5000 <image-name>:<image-tag>
```
