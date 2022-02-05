#Test des opérations de bases : ldi (pour load), add et subb. 
#On peut voir que le résultat est bon directement dans le circuit : r0 vaut bien 1 à l'avant dernière ligne. 



ldi r0, 31
ldi r1, 20
ldi r2, 10
add r1, r1, r2
sub r0, r0, r1
end: jmp end
