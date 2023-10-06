FROM python:3.7
COPY . /custom-scheduler
WORKDIR /custom-scheduler
RUN echo 'nameserver 1.1.1.1' >> /etc/resolv.conf && echo 'nameserver 1.0.0.1' >> /etc/resolv.conf && pip3 install -r requirements.txt
CMD python3 -u main.py