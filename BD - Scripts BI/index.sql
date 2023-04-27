select cast(c.data_hora_evolucao_utc as date),
    c.data_hora_evolucao,
    c.data_hora_lancamento,
    c.data_hora_evolucao_utc,
    c.data_hora_lancamento_utc
from atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao
where a.cod_atendimento = :reg
    and g.cod in (
        'M11',
        'M12',
        '13',
        'M14',
        'M15',
        'M16',
        'M17',
        'M18',
        'M19',
        'M20',
        'M21',
        'M22'
    )
    and f.cod_pergunta = '2121'
    and a.tp_atendimento = 'I'
    and c.id_tbcbopro_suspensao is null