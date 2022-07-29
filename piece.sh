#!/bin/bash

# echo "|                  |"
# sleep 1
# clear
# echo "|||                |"
# sleep 1
# clear
# echo "||||||             |"
# sleep 1
# clear
# echo "|||||||||          |"
# sleep 1
# clear
# echo "||||||||||||       |"
# sleep 1
# clear
# echo "|||||||||||||||    |"
# sleep 1
# clear
# echo "||||||||||||||||||||"

clear 
echo " Bienvenue dans notre Mega Jeu du Pile ou Face !"
echo " Ecrivez 1 pour Pile ou bien 2 pour Face afin de commencer"
echo "Et regardez si vous avez gagné !"
read reponse
#Commande pour générer un nombre aleatoire entre 1 ou 2 

alea=$((1 + RANDOM % 2))

sleep 1
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

echo "     ------     "
echo "   /  ___   \   "
echo "  /  // ||   \  "
echo " |      ||    | "
echo " |      ||    | "
echo "  \    ----  /  "
echo "   \        /   "
echo "     ------     "

sleep 1
clear

echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "

sleep 1
clear

echo "     ------     "
echo "   /  ____  \   "
echo "  /  ||  ||  \  "
echo " |  //    \\  | "
echo " | ||  /\  || | "
echo "  \  ------  /  "
echo "   \        /   "
echo "     ------     "

sleep 1
clear

echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "

sleep 1
clear


echo "     ------     "
echo "   /  ___   \   "
echo "  /  // ||   \  "
echo " |      ||    | "
echo " |      ||    | "
echo "  \    ----  /  "
echo "   \        /   "
echo "     ------     "

sleep 1
clear

echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "
echo "       ||       "

sleep 1
clear

echo "     ------     "
echo "   /  ____  \   "
echo "  /  ||  ||  \  "
echo " |  //    \\  | "
echo " | ||  /\  || | "
echo "  \  ------  /  "
echo "   \        /   "
echo "     ------     "

sleep 1
clear

#On regarde si il a gagné oui ou non. Et on sauvegarde si il a gagné avec un Pile ou un Face. 

#Victoire 

if [ $reponse -eq $alea ]
    then
        if [ $reponse -eq 1 ]

            then
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "

            sleep 1
            clear


            echo "     ------     "
            echo "   /  ___   \   "
            echo "  /  // ||   \  "
            echo " |      ||    | "
            echo " |      ||    | "
            echo "  \    ----  /  "
            echo "   \        /   "
            echo "     ------     "

            echo "Bravo ! C'est gagné "
            exit

        else

            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "

            sleep 1
            clear


            echo "     ------     "
            echo "   /  ___   \   "
            echo "  /  // ||   \  "
            echo " |      ||    | "
            echo " |      ||    | "
            echo "  \    ----  /  "
            echo "   \        /   "
            echo "     ------     "

            sleep 1
            clear

            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "
            echo "       ||       "

            sleep 1
            clear

            echo "     ------     "
            echo "   /  ____  \   "
            echo "  /  ||  ||  \  "
            echo " |  //    \\  | "
            echo " | ||  /\  || | "
            echo "  \  ------  /  "
            echo "   \        /   "
            echo "     ------     "

            echo " Bravo ! C'est gagné ! "
            exit
    fi
fi

#Défaite

if [ $reponse -ne $alea ]
   then
        if [ $reponse -eq 1 ]

            then

                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "

                sleep 1
                clear


                echo "     ------     "
                echo "   /  ___   \   "
                echo "  /  // ||   \  "
                echo " |      ||    | "
                echo " |      ||    | "
                echo "  \    ----  /  "
                echo "   \        /   "
                echo "     ------     "

                sleep 1
                clear

                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "

                sleep 1
                clear

                echo "     ------     "
                echo "   /  ____  \   "
                echo "  /  ||  ||  \  "
                echo " |  //    \\  | "
                echo " | ||  /\  || | "
                echo "  \  ------  /  "
                echo "   \        /   "
                echo "     ------     "

                echo "     Perdu... Retentez votre chance "
                exit

            else


                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "
                echo "       ||       "

                sleep 1
                clear


                echo "     ------     "
                echo "   /  ___   \   "
                echo "  /  // ||   \  "
                echo " |      ||    | "
                echo " |      ||    | "
                echo "  \    ----  /  "
                echo "   \        /   "
                echo "     ------     "

                echo "Perdu... Retentez votre chance"
                exit
        fi
fi