#Ce programme vérfie le bon traitement des sauts et sauts conditionnels.
#Le résultat est le bon si le programme boucle sur l'avant dernière ligne et non la dernière.



ldi r4, 4
ldi r5, 5
ldi r6, 6
ldi r7, 5

jlt r5, r6, next1     
jmp end 
next1: jle r5, r7, next2
jmp end 
next2: jle r7, r5, next3
jmp end 
next3: jlt r6, r4, end 
jle r6, r5, end 
win: jmp win
end: jmp end 
