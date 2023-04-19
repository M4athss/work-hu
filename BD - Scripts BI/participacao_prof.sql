select 
	a.prcabevol__data_hora_evolucao,
	c.cod_atendimento as Registro,
    a.c__resposta as conselho,
    a.prpergunta__cod_descricao as grau_participacao
from
    st_evolucoes a, 
    htatendimento b, 
    atcabecatend c
where
	b.id = a.prcabevol__id_htatendimento
	and c.id = b.id_atcabecatend
	and a.prevolucao__cod = 'E15' --Template de transoperatorio
    and c.cod_atendimento = 39579 --Registro
    and prpergunta__cod in ('2752','2753','2754','2755','2756','2757') 
        /*
        Códigos:
            2752 - Cirurgiao, 2753 - 1º Auxiliar, 2754 - 2º Auxiliar, 2755 - 3º Auxiliar,
            2756 - 1º Anestesista, 2757 - 2º Anestesista.
        */
order by
	a.prcabevol__data_hora_evolucao
	
    