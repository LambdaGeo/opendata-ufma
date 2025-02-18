FROM python:3.7-alpine
RUN apk add --update gcc libc-dev libxml2-dev libxslt-dev
COPY . /web
WORKDIR /web/api
RUN pip install -r ./requirements.txt
RUN adduser -D myuser
USER myuser
ENTRYPOINT ["python"]
CMD ["app.py"]