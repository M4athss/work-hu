/* REG e COD UTI */
select 
    --a.prcabevol__data_hora_evolucao,
    --c.id,
    --c.data_hora_entrada,
    c.cod_atendimento,    
    d.cod
from 
    st_evolucoes a, 
    htatendimento b, 
    atcabecatend c, 
    tbcid10 d
where
	b.id = a.prcabevol__id_htatendimento
	and c.id = b.id_atcabecatend
	and a.c__resposta = d.nome
    and a.prpergunta__tipoperg = 'CID 10' --Separa o tipo de pergunta nos formularios
   	and c.tp_atendimento = 'I' --tipo de atendimento somente interncao
    and prcabevol__id_tbcbopro_suspensao is null -- IS NULL indica que a evolução não foi suspensa, caso contrário teria o CBO do profissional resposável pela suspensão.
    and a.prevolucao__cod in ('U06') --Templates UTI coordenacao medica.
    and c.cod_atendimento = 39017  --Registro
order by
	a.prcabevol__data_hora_evolucao desc
limit 1
