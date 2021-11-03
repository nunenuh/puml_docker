FROM bitnami/python:3.9-prod

LABEL maintainer="Lalu Erfandi Maula Yusnu <nunenuh@gmail.com>"

COPY requirements/fastapi.txt /tmp/fastapi.txt
COPY requirements/ml.txt /tmp/ml.txt

RUN pip install --upgrade pip
RUN pip install psycopg2-binary==2.9.1
RUN pip install --no-cache-dir -r /tmp/fastapi.txt
RUN pip install --no-cache-dir -r /tmp/ml.txt

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

# Run the start script
CMD ["/start.sh"]
