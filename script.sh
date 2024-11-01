cd ..
cd Desktop/
mkdir IT21Z_Laur
cd IT21Z_Laur
mkdir Pinzaru_Laurentiu
touch Pinzaru_Laurentiu/1.txt
echo "creat 1.txt"
touch Pinzaru_Laurentiu/2.txt
echo "creat 2.txt"
touch Pinzaru_Laurentiu/.3.txt
echo "creat 3.txt ascuns"
echo "buna ziua 1" > Pinzaru_Laurentiu/1.txt
echo "adaugat text in 1.txt"
echo "buna ziua 2" > Pinzaru_Laurentiu/2.txt
echo "adaugat text in 2.txt"
echo "buna ziua 3" > Pinzaru_Laurentiu/.3.txt
echo "adaugat text in .3.txt"
mkdir $(date +%d.%m.%Y)
echo "Alege optiunea:"
echo "1. Muta documentele"
echo "2. Copie documentele"
read -p "Ce doriti sa execut :) ->" optiune

case $optiune in 
	1)
		echo "ai ales mutare"
		mv Pinzaru_Laurentiu/{1..2}.txt $(date +%d.%m.%Y)
		mv Pinzaru_Laurentiu/.3.txt $(date +%d.%m.%Y)
		echo "au fost mutate toate documentele in folder cu data"
;;
	2) 
		echo "ai ales copierea"
		cp -r Pinzaru_Laurentiu/{1..2}.txt $(date +%d.%m.%Y)
		cp -r Pinzaru_Laurentiu/.3.txt $(date +%d.%m.%Y)
		echo "au fost copiate toate documentele in folder cu data"
;;
esac
