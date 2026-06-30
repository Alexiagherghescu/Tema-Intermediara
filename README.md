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
- vreau ca atunci cand sunt apasate amandoua simultan sa nu se intample nimic, deoarece ar fi o eroare, counterul afiseaza valoarea anterioara apasarii celor 2 butoane simultan pana la primirea unei comenzi valide.

  
LUNI
Raspuns la intrebari Debouncer  
-da, am nevoie de un debouncer pentru fiecare buton,    
-am scris modulul de debouncer luand in considerare detectorul de front si detectorul de nivel, puse in evidenta intr-un singur modul .
Am verificat prin testbench functionarea butoanelor si a debouncerului. Am intampinat o problema cu initializarea semnalelor. Semnalul led nu era initializat cu nicio valoare.  
Am realizat ca era o problema de metastabilitate din cauza debouncerului , intrucat semnalele din acesta nu au fost initializate cu nicio valoare, iar counterul nu stie de la ce valoare incepe si numara .  De asemenea am inceput testbench ul prin a da un reset sistemului.
Voi verifica daca din 0 decrementarea se va face la 2^n-1 si daca incrementarea din 2^n-1 se transforma in 0.(cand counterul isi atinge limitele desemnate de nr de biti).
Da, se verifica comportamentul dorit. De la 0 decrementarea duce la ffff.




