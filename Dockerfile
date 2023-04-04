FROM continuumio/miniconda3

COPY requirements.txt /tmp/
COPY ./app /app 
WORKDIR "/app"
RUN pip3 install -r /tmp/requirements.txt 
RUN apt-get install ca-certificates
ENTRYPOINT [ "python3" ]
CMD [ "flights.py" ]