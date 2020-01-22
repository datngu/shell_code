for chr in {1..22} X Y MT
do
zcat Homo_sapiens.GRCh37.75.dna.chromosome.$chr.fa.gz > $chr.fa
done



for chr in {1..22} X Y MT
do
  sed -i "1s/.*/>$chr/" $chr.fa
done
