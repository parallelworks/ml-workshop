#!/bin/bash
#==============================
# Create a Conda environment
# for use with TensorFlow
#==============================

# Assume miniconda is already installed here:
source ${HOME}/pw/software/.miniconda3c/etc/profile.d/conda.sh

# Create the new environment
conda create -y --name tf-cpu-py39 python=3.9

# Activate the environment
conda activate tf-cpu-py39
conda config --add channels conda-forge
conda config --set channel_priority strict

# Install miniconda packages
conda install -q -y requests
conda install -q -y ipykernel
conda install -q -y jinja2
conda install -q -y pandas matplotlib

# Install pip packages
pip install --upgrade pip
pip install tensorflow
pip install tensorboard-plugin-profile

