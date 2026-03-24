FROM python:3.11-alpine3.20
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /code/app
COPY ./insert-many.py /code/insert-many.py
COPY ./insert-one.py /code/insert-one.py
CMD ["fastapi", "run", "app/main.py", "--port", "80", "--workers", "4"]
