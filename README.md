Tema-Intermediara
Contor binar pe 16b controlat prin butoane.

Implementați pe placa de dezvoltare FPGA un contor binar pe 16 biți, afișat pe 16 LED-uri, controlat prin 3 butoane: 

• Buton 1 — Incrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se incrementează cu 1.

• Buton 2 — Decrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se decrementează cu 1. 

• Buton 3 — Reset: readuce valoarea contorului la 0 (toate LED-urile stinse). 

Am inceput sa schitez proiectul sub forma unui counter pe 16b. Deoarece vrem sa fie afisat pe 16 Led uri , fiecare led ar trebui sa reprezinte un bit, atunci cand vom conecta la placa cea mai usoara varianta ar fi sa am 16 iesiri : out[n] =led n ;

Buton 1- il denumesc Up;  
Buton 2- il denumesc Down;  
Buton 3- resetul, toate ledurile stinse.  
Avem nevoie de clock pentru a sincroniza sistemul de numarare la fronturile pozitive ale ceasului. 

Avem nevoie de un circuit de Debounce:  
-Am nevoie de debounce pentru fiecare buton?(De vazut ECE3300 55-61)    
-Cum ar trebui scris modulul de debounce?(De vazut ECE4305: M3)
                                        
Ce se intampla cand ajung la nr maxim care poate fi reprezentat pe 16b si apas butonul 1? - as vrea ca incrementarea sa inceapa iar de la 0  
Dar cand sunt la 0 si apas butonul 2? - as vrea ca decrementarea sa inceapa de la nr maxim care poate fi reprezentat pe 16b.  
Am nevoie de o secventa de cod separata care impune aceste constrangeri? - voi vedea in testbench, nu cred ca am nevoie de o alta structura  
Se pot apasa simultan 2 butoane? Care ar avea prioritate?  
