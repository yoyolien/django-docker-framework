FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . /app/
COPY ./docker/buildup.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


RUN pip install --no-cache-dir -r /app/requirement.txt
RUN python manage.py collectstatic --noinput
RUN python manage.py makemigrations
CMD ["python", "manage.py", "migrate"]
CMD ["cd", "docker_django_CD"]
CMD ["gunicorn", "docker_django_CD.wsgi:application", "--bind", "0.0.0.0:8000"]