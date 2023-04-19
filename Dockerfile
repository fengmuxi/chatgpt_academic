FROM python:3.11

RUN echo '[global]' > /etc/pip.conf && \
    echo 'index-url = https://mirrors.aliyun.com/pypi/simple/' >> /etc/pip.conf && \
    echo 'trusted-host = mirrors.aliyun.com' >> /etc/pip.conf


WORKDIR /gpt
COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 44167
CMD ["python3", "-u", "main.py"]
