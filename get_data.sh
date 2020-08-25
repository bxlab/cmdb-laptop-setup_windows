mkdir -p data data/genomes data/rawdata data/results

# wget -r -np -nH --cut-dirs=1 ftp://ftp.flybase.net/releases/FB2017_03/dmel_r6.16/

curl ftp.ensembl.org/pub/release-81/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.81.gtf.gz | gzip -d > data/genomes/BDGP6.Ensembl.81.gtf
curl ftp.ensembl.org/pub/release-81/fasta/drosophila_melanogaster/dna/Drosophila_melanogaster.BDGP6.dna_sm.toplevel.fa.gz | gzip -d > data/genomes/BDGP6.fa

pushd data/rawdata
fastq-dump SRR072893 # male cycle 10 - 848 MB
fastq-dump SRR072903 # male cycle 14D - 730 MB
fastq-dump SRR072905 # female cycle 10 - 985 MB
fastq-dump SRR072915 # female cycle 14D - 860 MB
popd

pushd data/results
wget https://www.dropbox.com/s/n3ip2hxy8we18vs/SRP004442.stringtie.tar.gz?raw=1 --output-document=SRP004442.stringtie.tar.gz
popd
