/* CID Internação */
select 
    --a.prcabevol__data_hora_evolucao,
    --c.id,
    --c.data_hora_entrada,
    c.cod_atendimento,    
    d.cod
from 
    st_evolucoes a, -- formulario de evolucao do pep
    htatendimento b, --Historico atendimento
    atcabecatend c, --registro do atendimento
    tbcid10 d -- CID 10
    --prcabevol e
where
	b.id = a.prcabevol__id_htatendimento
	and c.id = b.id_atcabecatend
	and a.c__resposta = d.nome
    and a.prpergunta__tipoperg = 'CID 10' --Separa o tipo de pergunta nos formularios
   	and c.tp_atendimento = 'I' --tipo de atendimento somente interncao
    and prcabevol__id_tbcbopro_suspensao is null -- IS NULL indica que a evolução não foi suspensa, caso contrário teria o CBO do profissional resposável pela suspensão.
    and a.prevolucao__cod in ('M06', 'E09') --Templates Evolução médica e sumário de alta.
    and c.cod_atendimento = 39017  --Registro
order by
	a.prcabevol__data_hora_evolucao desc
limit 1