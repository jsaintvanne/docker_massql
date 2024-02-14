FROM python:3.8

RUN pip install massql

ENTRYPOINT ["massql"]