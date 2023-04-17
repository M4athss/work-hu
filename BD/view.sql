CREATE VIEW Resultados AS 
    SELECT a_matricula AS Matricula, 
    turma_num AS Numero_da_turma, 
    nota AS Nota_Final 
FROM historico;

