FROM jupyterhub/jupyterhub:latest

# Install jupyterhub
RUN useradd -d /home/laurent -m -p laurent laurent
RUN wget https://raw.githubusercontent.com/lcolombier/jupyterhub/master/jupyterhub_config.py -O /srv/jupyterhub/jupyterhub_config.py
RUN pip install jupyter

# Install R
RUN echo "deb http://cran.irsn.fr/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list.d/R.list
RUN apt-get update
RUN apt-get install -y r-base
RUN R IRkernel::installspec()
