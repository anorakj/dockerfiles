FROM python:3.8.7 AS compile-image

RUN python -m venv /opt/venv
# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"

RUN pip3 install tensorflow 
RUN pip3 install pandas 
RUN pip3 install scikit-learn 
RUN pip3 install jupyterlab 
RUN pip3 install xlrd 
RUN pip3 install seaborn 
RUN pip3 install bokeh 
RUN pip3 install tqdm 
RUN pip3 install click 

FROM python:3.8.7-slim AS build-image
COPY --from=compile-image /opt/venv /opt/venv

# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"

ENTRYPOINT ["jupyter", "lab", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"] 
