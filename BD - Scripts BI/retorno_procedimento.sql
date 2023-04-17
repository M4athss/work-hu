/* RETORNO DE PROCEDIMENTOS PARA ATUALIZACAO */
select 
    c.cod_atendimento,
    a.prevolucao__cod,
    a.prevolucao__descricao,
    a.prpergunta__tipoperg,
    a.prpergunta__cod_descricao
from 
    st_evolucoes a, 
    htatendimento b, 
    atcabecatend c
where
	b.id = a.prcabevol__id_htatendimento
	and c.id = b.id_atcabecatend
    and prpergunta__tipoperg = 'Procedimento'
    and a.prevolucao__cod = 'M21'
    and c.cod_atendimento = 39216
--limit 1

/*
--POSSIVEL LOCALIZACAO DO PROCEDIMENTO--

select d.id_cabevol, d.ordem, a.nome  from prevolpac d
inner join htprocto a on a.id = d.id_htprocto

where d.id_cabevol = 1191034
*/