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

% 1. Con profesor_de la aplicacion es similar a la de prelacion_total aque aplique en el problema1
% 2. Para el aprobado aplique la conjuncion de que fuera true si se encuentra la relacion nota con Est Y Mat, y esa nota fuera superior a 49
% 3. Para aplazado tengo uso la negacion de aprobado, sin embargo no aplica solo con esa porque se puede dar el caso de que esta aun cursando una Materia
% por lo cual aplique que se tomara en cuenta que tiene una materia en las materias que cursa
% 4. Para la ultima de curseando_sin_nota aplique la conjuncion con la negacion de nota para cubrir que efectivamente ese viendo la materia