select
    a.cod_atendimento,
    i.cod
from
    atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao
    inner join htcid h on h.id = d.id_htcid
    inner join tbcid10 i on i.id = h.id_tbcid10
where
    a.cod_atendimento = 39336 --Registro do atendimento
    and g.cod in ('U06') --Templates UTI coordenacao medica.
    and f.tipoperg = 10 --Separa o tipo CID de pergunta nos formularios
    and a.tp_atendimento = 'I' --tipo de atendimento somente interncao
    and c.id_tbcbopro_suspensao is null --IS NULL indica que a evolução não foi suspensa, caso contrário teria o CBO do profissional resposável pela suspensão.
order by
    c.data_hora_evolucao desc
limit 1