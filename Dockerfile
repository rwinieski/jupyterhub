FROM jupyterhub/jupyterhub:latest
RUN useradd -d /home/admin -m -p cZlGSVzup98uU admin
RUN wget https://github.com/lcolombier/jupyterhub/blob/master/jupyterhub_config.py -O /srv/jupyterhub/jupyterhub_config.py
RUN pip install jupyter
