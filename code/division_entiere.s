#Effectue la division entière de la valeur stockée dans r0 (ici 42) par 10.
#Le résultat est le bon si le programme boucle sur l'avant-dernière ligne plutôt que la dernière



ldi r0, 42 #Valeur de départ
ldi r7, 4 #Valeur attendue 
ldi r1, 10 #Constante
ldi r2, 0 #Compteur

loop: jlt r0, r1, end_loop #Si valeur_courante<10
sub r0, r0, r1  #valeur_courante-=10
addi r2, r2, 1 #Compteur +=1
jmp loop

end_loop: jeq r2, r7, end_loop #Si la valeure obtenue est la valeur attendue, on boucle sur cette ligne 
end: jmp end 
 