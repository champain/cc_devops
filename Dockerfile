FROM python:3.7.2-alpine3.8
  EXPOSE 8000/tcp
  COPY requirements.txt /
  RUN pip install -r /requirements.txt \
    && mkdir /myapp
  COPY firstProject /myapp
  WORKDIR /myapp
  ENTRYPOINT ["python", "manage.py", "runserver"]
