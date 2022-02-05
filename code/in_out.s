#Ce programme récupère une entrée de l'utilisateur (via le clavier en page 3, celui-ci ne récupère qu'à un instant précis les inputs)
#Cette entrée est ensuite affichée (sur l'écran en page 3), sauf si c'est la touche entrée, dans ce cas le programme s'arrête. 



ldi r1, 13 #13 est la valeur en ASCII pour la touche entrée

loop: in r0 #On récupère une valeur
jeq r0, r1, end #Si c'est entrée, on s'arrête 
out r0  #Sinon on l'affiche 
jmp loop #On recommence

end: jmp end
