FROM amazonlinux:latest
RUN yum install -y python3
RUN yum install -y python3-pip
RUN pip3 install flask
RUN mkdir /app
COPY . /app
WORKDIR /app
CMD ["python3", "app.py"]
EXPOSE 5000
