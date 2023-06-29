FROM python:3.11
# author and description label
LABEL author="Oliver Staudt <oliver.r.staudt@gmail.com>"
LABEL description="Just a simple demonstration how a module can be packaged \
    and run within a docker container."

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1
# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Set Working Dir
WORKDIR /app

# Install pip requirements
COPY requirements.txt .
COPY pyproject.toml .
COPY my_module ./my_module/

RUN adduser -u 1000 --disabled-password --gecos "" app-user && chown -R app-user /app \
    && pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir .
USER app-user

# run the module on start
CMD ["python","-m","my_module"]
