FROM tensorflow/tensorflow

RUN apt-get update

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . .

WORKDIR ./Server

CMD ["python",  "server.py"]

RUN chmod +x script.sh
COPY ./script.sh /tmp/script.sh
RUN /tmp/script.sh
