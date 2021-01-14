FROM python:3.9.1

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install jupyterlab

ENTRYPOINT ["jupyterlab", "--no-browser", "--allow-root"， "--ip", "0.0.0.0"] 