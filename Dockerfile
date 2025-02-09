# Docker file for the census income prediction
# Author: Philson Chan
# December 09, 2021

# Use anaconda as the base image
FROM continuumio/anaconda3
# FROM jupyter/base-notebook
# Install System Pre-requisites

# RUN apt update && apt install -y software-properties-common build-essential libcurl4-openssl-dev libssl-dev libxml2-dev

# # Install R (Version 4.1.2)
# RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'

# RUN add-apt-repository "deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/" && \
#     apt update && \
#     apt install -y -t bullseye-cran40 r-base r-base-dev

# # # Install required packages in R
# RUN Rscript -e "install.packages('tidyverse');"

# Install R (Version 4.1.2)
RUN apt-get install r-base r-base-dev -y 
	
# Install required packages in R
RUN Rscript -e "install.packages('tidyverse');"

# install the kableExtra package 
RUN Rscript -e "install.packages('kableExtra')"

# install knitr
RUN Rscript -e "install.packages('knitr', dependencies = TRUE)"


RUN apt-get install make -y
# Download the conda environment file and create conda environment
#RUN cd home && \
#    wget https://raw.githubusercontent.com/UBC-MDS/census-income-prediction/main/census-income.yaml && \
# COPY census-income.yaml ./home
# RUN conda env create -f /home/census-income.yaml

# Garbage collection
# RUN rm /home/census-income.yaml 

RUN conda install --quiet -y -c conda-forge \
    "requests>=2.24.0" \
    "altair=4.1.*" \
    "docopt=0.6.*" \
    "matplotlib=3.5.*" \
    "matplotlib-inline=0.1.*" \
    "numpy=1.21.*" \
    "pandas=1.3.*" \
    "scikit-learn=1.*" \
    "scipy=1.7.*" \
    "pandoc>=1.12.3" \
    "shap>=0.40.0" \
    "imbalanced-learn==0.8.*" \
    "altair_data_server==0.4.1" \
    "ipykernel==6.5.*" \
    "vega_datasets==0.9.*" \
    "graphviz==0.19.*" \
    "altair_saver==0.5.*"
    

# RUN pip install \
    
    
    
    
    




 

 

