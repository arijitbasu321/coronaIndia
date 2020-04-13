# base image
FROM python:latest
# Copy executable file
COPY coronaIndia /usr/local/bin
# install packages &
RUN pip install requests \
  && pip install prettytable \
  && chmod 777 /usr/local/bin/coronaIndia
# Define CMD
CMD ["python"]
