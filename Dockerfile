FROM python:3

COPY . /app
WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
