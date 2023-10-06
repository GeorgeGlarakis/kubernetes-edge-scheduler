FROM python:3.7
COPY . /custom-scheduler
WORKDIR /custom-scheduler
RUN echo ‘nameserver 8.8.8.8’ >> /etc/resolve.conf && echo ‘nameserver 8.8.4.4’ >> /etc/resolve.conf’ && pip3 install -r requirements.txt
CMD python3 -u main.py