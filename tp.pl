%% Agustin Peña - Logico - tp dreadbury

viveEnMansion(agatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).
viveEnMansion(milhouse).

odiaA(agatha, Persona):-viveEnMansion(Persona), Persona\=mayordomo.
odiaA(charles, Persona):-viveEnMansion(Persona), not(odiaA(agatha, Persona)).
odiaA(mayordomo, Persona):-odiaA(agatha, Persona).

masRico(Persona, agatha):-viveEnMansion(Persona), not(odiaA(mayordomo, Persona)).

quienMato(Victima, Persona):-odiaA(Persona, Victima), viveEnMansion(Persona), not(masRico(Persona, agatha)).

%% 1-b
%% quienMato(agatha, Persona).
%% Persona = agatha .

%% 2-b
%% odiaA(Persona, milhouse).
%% Persona = agatha ;
%% Persona = mayordomo.

%% odiaA(Persona, agatha).
%% Persona = agatha ;
%% Persona = mayordomo.

%% odiaA(Odiador, Odiado).
%% Odiador = Odiado, Odiado = agatha ;
%% Odiador = agatha, Odiado = charles ;
%% Odiador = agatha, Odiado = milhouse ;
%% Odiador = charles, Odiado = mayordomo ;
%% Odiador = mayordomo, Odiado = agatha ;
%% Odiador = mayordomo, Odiado = charles ;
%% Odiador = mayordomo, Odiado = milhouse.

%% odiaA(mayordomo, _).
%% true .
