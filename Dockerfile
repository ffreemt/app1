FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

EXPOSE 8080

# gcloud env var seems to be 8080
CMD ["fastapi", "run", "app/main.py", "--port", "8080"]

# default port 8000
# CMD ["fastapi", "run", "app/main.py"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["fastapi", "run", "app/main.py", "--port", "80", "--proxy-headers"]

# docker build -t gcr.io/chat2api-gcloud/github.com/ffreemt/app1:$COMMIT_SHA .