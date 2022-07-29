#!/bin/sh

#L'idée est de rentrer une valeur d'argent et avec While suppérieur à 0, on peut continuer de jouer, sinon c'est banqueroute.
#On crée une autre boucle while dedans, qui demande si on veut rejouer ou stop avec nos gains.

#On commence par l'intro de fou avec la demande de gains. 

clear
echo "     Chargement     "
echo "|                  |"
sleep 0.5
clear
echo "     Chargement     "
echo "|||                |"
sleep 0.5
clear
echo "     Chargement     "
echo "||||||             |"
sleep 0.5
clear
echo "     Chargement     "
echo "|||||||||          |"
sleep 0.5
clear
echo "     Chargement     "
echo "||||||||||||       |"
sleep 0.5
clear
echo "     Chargement     "
echo "|||||||||||||||    |"
sleep 0.5
clear
echo "     Chargement     "
echo "||||||||||||||||||||"
sleep 1
clear

echo -e "\e[4mBIENVENUE !\e[0m"
echo
echo "Pour commencer à jouer à notre superbe jeu, misez une quantité d'argent !"
echo "La richesse est juste là !"
echo
echo
echo "||=================||    "
echo "||  #  |  #  |  #  ||    "
echo "||     |     |     ||    "
echo "||  $  |  $  |  $  ||   O"
echo "||     |     |     ||  / "
echo "||  £  |  £  |  £  || /  "
echo "||=================||/   "
echo
echo
echo "C'est 1€ la partie."
echo "Combien voulez-vous miser ? xxx €"

read solde

#solde = L'argent du monsieur

while [ $solde -gt 0 ]
    do
    echo
    echo
    echo "Voulez-vous continuer de jouer ? Ecrivez 1 pour oui, 2 pour non."
    read jouer
    clear
    if [ $jouer -eq 1 ]
        then
        clear
        let "solde=$solde-1"
        echo
        echo
        echo "||=================||    "
        echo "||  #  |  #  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  $  |  $  |  $  ||   O"
        echo "||     |     |     ||  / "
        echo "||  £  |  £  |  £  || /  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  #  |  #  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  $  |  $  |  $  ||    "
        echo "||     |     |     ||  O "
        echo "||  £  |  £  |  £  || /  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  #  |  #  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  $  |  $  |  $  ||    "
        echo "||     |     |     ||    "
        echo "||  £  |  £  |  £  || O  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  #  |  #  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  $  |  $  |  $  ||    "
        echo "||     |     |     ||    "
        echo "||  £  |  £  |  £  || O  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  @  |  #  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  #  |  $  |  $  ||    "
        echo "||     |     |     ||  O "
        echo "||  $  |  £  |  £  || /  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  *  |  @  |  #  ||    "
        echo "||     |     |     ||    "
        echo "||  @  |  #  |  $  ||   O"
        echo "||     |     |     ||  / "
        echo "||  #  |  $  |  £  || /  "
        echo "||=================||/   "
        sleep .5
        clear
        echo
        echo
        echo "||=================||    "
        echo "||  &  |  *  |  @  ||    "
        echo "||     |     |     ||    "
        echo "||  *  |  @  |  #  ||   O"
        echo "||     |     |     ||  / "
        echo "||  @  |  #  |  $  || /  "
        echo "||=================||/   "
        sleep .5
        clear

        #si le joueur veut plus jouer alors on stop ici
        else
            clear
            echo
            echo
            echo "||=================||              Merci d'avoir jouer ^^ "
            echo "||     |     |     ||    "         
            echo "||     |     |     ||              Votre solde est de $solde€ "
            echo "||  $  |  $  |  $  ||   O"
            echo "||     |     |     ||  / "
            echo "||     |     |     || /  "
            echo "||=================||/   "

            exit
    fi  

 #On créer une boucle pour annimer la machine sans devoir la copier/coller à l'infini
 #dedans à chaque fois, on va avoir 3 variables (index1/2/3) qui seront alea, et donc une machine alea
 #Et la commande array permet de creer une liste qui contient ce qu'on veut, même des caractères !
 #On peut donc ensuite avec les index sortir de la liste, un caractère aleatoire ! Trop trop bien. 


i=3

while [ $i -ge 0 ]
    do
            array[0]="*"
            array[1]="&"
            array[2]="#"
            array[3]="¤"
            array[4]="£"
            array[5]="$"
            clear
            #array@ c'est pour les nombre d'élément dans ma liste. Là j'ai 6 éléments // 6 array
            size=${#array[@]}

            #Donc on choisi ensuite un nombre alea parmis le nombre max d'élément (soit 6 pour ici)
            #qu'on stock dans index1/2/3

            index1=$(($RANDOM % $size))
            index2=$(($RANDOM % $size))
            index3=$(($RANDOM % $size))

            #on créer d'autre index juste pour faire jolie dans la machine.
            index4=$(($RANDOM % $size))
            index5=$(($RANDOM % $size))
            index6=$(($RANDOM % $size))

            #on utilise notre variable i du début qu'on réduit de 1 à chaque boucle. 
            #Une fois que i=0, la boucle stop
            let "i=$i-1"

            #on affiche la machine avec les symboles choisi aleatoirement en disant "montre moi l'élément "X"
            #de ma liste. "X" étant index1/2/3
            echo
            echo
            echo "||=================||    "
            echo "||  ${array[$index4]}  |  ${array[$index5]}  |  ${array[$index6]}  ||    "
            echo "||     |     |     ||    "
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index1]}  || /  "
            echo "||=================||/   "

            sleep 0.5
            clear
        done
#On vérifie si tous les index sont equaux pour savoir si il a toucher le jackpot ou non
    if [ $index1 -eq $index2 -a $index2 -eq $index3 ]
    then
        #Si il a toucher, ben faut voir maintenant lequel, il y a 6 symboles, donc 6 gains possibles.
        if [ $index1 -eq 0 ]
            then
            let "solde=$solde+5"
            echo
            echo
            echo "||=================||              Gagné ! Bravo ! "
            echo "||  ${array[$index5]}  |  ${array[$index3]}  |  ${array[$index6]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index1]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi

        if [ $index1 -eq 1 ]
            then
            let "solde=$solde+10"
            echo
            echo
            echo "||=================||              Gagné ! Bravo ! "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index5]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index6]}  |  ${array[$index2]}  |  ${array[$index1]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi

        if [ $index1 -eq 2 ]
            then
            let "solde=$solde+20"
            echo
            echo
            echo "||=================||              Gagné ! Bravo ! "
            echo "||  ${array[$index5]}  |  ${array[$index2]}  |  ${array[$index1]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index1]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi

        if [ $index1 -eq 3 ]
            then
            let "solde=$solde+30"
            echo
            echo
            echo "||=================||              Gagné ! Bravo ! "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index3]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index2]}  |  ${array[$index4]}  |  ${array[$index1]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi

        if [ $index1 -eq 4 ]
            then
            let "solde=$solde+40"

            echo
            echo
            echo
            echo
            echo "           /!\ Mini-Jackpot !!! /!\ "
            echo "                 Incroyable    "
            echo

            sleep 3
            clear
            echo
            echo "||=================||              Gagné ! Bravo ! "
            echo "||  ${array[$index6]}  |  ${array[$index6]}  |  ${array[$index6]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index4]}  |  ${array[$index4]}  |  ${array[$index4]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi

        if [ $index1 -eq 5 ]
            then
            echo
            echo
            echo
            echo
            echo "           /!\ Jackpot !!! /!\ "
            echo "               Incroyable    "
            sleep 3
            clear
            let "solde=$solde+80"
            echo
            echo "                                   =============  "
            echo "||=================||             /!\ Jackpot /!\ "
            echo "||  ${array[$index5]}  |  ${array[$index5]}  |  ${array[$index5]}  ||              =============  "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index6]}  |  ${array[$index6]}  |  ${array[$index6]}  || /  "
            echo "||=================||/   "

            sleep 1
        fi
    else
            echo
            echo
            echo "||=================||              Perdu... Dommage "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index1]}  ||    "
            echo "||     |     |     ||              Votre nouveau solde est de : $solde€"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index6]}  || /  "
            echo "||=================||/   "
    fi
done

#maintenant si il a perdu tout son argent, on montre un écran de remerciement
#Parce que c'est un gros pigeon. Faut lui dire merci
clear
echo
            echo
            echo "||=================||              Merci d'avoir jouer ^^ "
            echo "||  ${array[$index5]}  |  ${array[$index4]}  |  ${array[$index1]}  ||    "
            echo "||     |     |     ||              Remettez de l'argent pour continuer"
            echo "||  ${array[$index1]}  |  ${array[$index2]}  |  ${array[$index3]}  ||   O"
            echo "||     |     |     ||  / "
            echo "||  ${array[$index5]}  |  ${array[$index2]}  |  ${array[$index5]}  || /  "
            echo "||=================||/   "


