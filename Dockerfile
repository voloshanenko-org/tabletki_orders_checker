FROM python:3.10-slim-buster

COPY  requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY app.py app/

WORKDIR app/
CMD ["python3", "app.py"]
