for chr in {1..22} X Y MT
do
zcat Homo_sapiens.GRCh37.75.dna.chromosome.$chr.fa.gz > $chr.fa
done



for chr in {1..22} X Y MT
do
  sed -i "1s/.*/>$chr/" $chr.fa
done

## config to avoid certificate requirement in gitbuket
git config --global http.sslverify "false"


git remote add origin https://github.com/datngu/run_mix_all.git
git branch -M main
git push -u origin main
