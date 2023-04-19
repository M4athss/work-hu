select
    a.cod_atendimento,
    g.descricao,
    f.descricao,
    f.tipoperg,
    i.cod,
    i.nome
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
    --inner join prcadresp h on h.cod = e.cod
where
    a.cod_atendimento = 39287
    and g.cod in ('M06','E09')
    and f.tipoperg = 10
