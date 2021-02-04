FROM python:3.8.7

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install jupyterlab

ENTRYPOINT ["jupyter", "lab", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"] 