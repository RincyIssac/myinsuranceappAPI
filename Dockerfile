FROM ubuntu
RUN apt-get update && apt-get install -y python3 python3-pip
COPY . /
RUN cd myinsuranceapp && pip3 install -r requirements.txt
WORKDIR myinsuranceapp
CMD ["python3", "project/init/init_db.py"]
CMD ["python3","runserver.py"]
EXPOSE 5000
