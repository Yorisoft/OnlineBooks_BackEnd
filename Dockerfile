FROM python:3.6

EXPOSE 5000

ENV FLASK_APP=cscl_api.app.py
ENV FLASK_ENVIRONMENT=development

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY cscl_api cscl_api

CMD ["flask", "run", "--host", "0.0.0.0"]