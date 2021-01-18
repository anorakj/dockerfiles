FROM python:3.8.7 AS compile-image

RUN python -m venv /opt/venv
# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install tensorflow 
RUN pip install pandas 
RUN pip install scikit-learn 
RUN pip install jupyterlab 
RUN pip install xlrd 
RUN pip install seaborn 
RUN pip install bokeh 
RUN pip install tqdm 
RUN pip install click 

FROM python:3.8.7-slim AS build-image
COPY --from=compile-image /opt/venv /opt/venv

# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"

ENTRYPOINT ["jupyter", "lab", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"] 
