#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

source ~/.bash_profile

conda config --add channels defaults
conda config --add channels conda-forge
conda config --add channels bioconda

conda update -n base -c defaults conda -y

conda install -n cmdb -y python=3.6.10 bwa bowtie bowtie2 hisat2 stringtie cufflinks samtools bedtools
    fastqc sra-tools blast numpy scipy pandas sympy pymc scikit-learn scikit-image cython \
    ipython jupyter patsy statsmodels matplotlib seaborn macs2

echo "conda activate cmdb" >> ~/.bash_profile

conda activate cmdb

conda install -c bokeh bokeh -y

pip install simpy --user
