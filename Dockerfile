FROM jupyterhub/jupyterhub:latest
RUN useradd -d /home/admin -m -p cZlGSVzup98uU admin
RUN wget https://raw.githubusercontent.com/lcolombier/jupyterhub/jupyterhub_config.py -O /srv/jupyterhub/jupyterhub_config.py
RUN pip install jupyter