select
    a.cod_atendimento,
    h.nome

from
    atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao
    left join htprocto h on h.id = d.id_htprocto

where
    a.cod_atendimento = 39216
    and g.cod in ('M21','E15')
    --and f.cod_pergunta in ('2752','2753','2754','2755','2756','2757')
    and a.tp_atendimento = 'I'
    and c.id_tbcbopro_suspensao is null
order by
    c.data_hora_evolucao desc
