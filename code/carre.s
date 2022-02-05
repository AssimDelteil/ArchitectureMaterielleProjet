#Prend un entier n et un caractere c de l'utilisateur (si le premier caractere n'est pas un entier, le programme reprend un caractère)
#Affiche un carré de taille n composé du caractere c.



ldi r1, 13 #ASCII pour la touche entrée
ldi r2, 48 #ASCII pour 0
ldi r3, 57 #ASCII pour 9
ldi r4, 255 #ASCII pour entrée vide 

#getn est la boucle pour obtenir n
getn: in r0
jeq r4, r0, getn #n ne peut pas être le caractère vide
#n doit être en entier, donc entre 48 et 57 compris
jlt r0, r2, getn
jlt r3, r0, getn 

#getc est la boucle pour obtenir le caractère
getc: in r5
jeq r4, r5, getc #Le caractère ne peut pas être vide
jeq r4, r1, getc #Le caractère ne peut pas être la touche entrée

ldi r2, 0 #Constante utilisée pour les conditions de sortie de boucle
ldi r4, 48 #Permet d'obtenir la valeure entière de la valeur ASCII de n 
ldi r6, 0
sub r0, r0, r4 #Passe de ASCII à entier, i<-n 
jeq r0, r6, end 
addi r4, r0, 0 #cst<-n, permet de remettre j à n, addi x,x,0 car mov provoque des erreurs 

loop_ext: 
addi r3, r4, 0 #j<-n 

loop_int: 
out r5
subi r3, r3, 1 #j-=1
jlt r2, r3, loop_int # Si j>=1

out r1 #out "\n"
subi r0, r0, 1 #i-=1
jlt r2, r0, loop_ext # Si i>=1

end: jmp end
