% prela
prela(ci2691, ci3661).
prela(ci2525, ci2691).
prela(ci2691, ci3641).
prela(ci3641, ci3725).
prela(ci3725, ci3825). 
prela(ma1111, ci2525).

% Regla: prelacion_directa
prelacion_directa(X, Y) :- prela(X, Y).


% Regla: prelacion_total (∀x∣x∈Materia(x):(∀z∣z∈Materia(z):(∀y∣y∈Materia(y):((Prela(x,z)∧Prela(z,y)) → Prela(x,y)))))
prelacion_total(X, Y) :- prelacion_directa(X, Y).
prelacion_total(X, Y) :- prelacion_directa(X, Z), prelacion_total(Z, Y).