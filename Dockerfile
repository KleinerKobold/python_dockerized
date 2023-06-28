FROM python:3.11
RUN mkdir /apps && mkdir /apps/my_module

COPY requirements.txt /apps/
COPY pyproject.toml /apps/
COPY ./my_module/* /apps/my_module/


WORKDIR /apps

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install /apps/
