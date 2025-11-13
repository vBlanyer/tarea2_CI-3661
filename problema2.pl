% dicta(Profesor, Materia)
dicta(leonardo, ci3661).
dicta(maria, ci3725).
dicta(pedro, ci2691).

% cursa(Estudiante, Materia)
cursa(ana, ci3661).
cursa(ana, ci3725).
cursa(juan, ci3661).
cursa(elena, ci2691).
cursa(elena, ci3725).

% nota(Estudiante, Materia, Nota)
nota(ana, ci3661, 88).
nota(ana, ci3725, 70).
nota(juan, ci3661, 40). % juan clavo :c
nota(elena, ci2691, 49).
% elena no tiene nota en ci3725 (la esta cursando)

% Regla:
profesor_de(Prof, Est) :- dicta(Prof, Mat), cursa(Est, Mat).
aprobado(Est, Mat) :- nota(Est, Mat, Nota), Nota > 49.
aplazado(Est) :- nota(Est, Mat, _), cursa(Est, Mat), \+ aprobado(Est, Mat).
cursando_sin_nota(Est, Mat) :- \+ nota(Est, Mat, _), cursa(Est, Mat).