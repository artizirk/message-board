FROM alpine:latest

EXPOSE 8080
ENV LISTEN_ADDR 0.0.0.0:8080
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3
COPY main.py /main.py
USER nobody
CMD ["/usr/bin/env", "python3", "/main.py"]
