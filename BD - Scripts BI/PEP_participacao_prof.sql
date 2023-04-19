select
    a.cod_atendimento as registro,
    d.respalfa as conselho,
    f.descricao as grau_participacao

from
    atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao

where
    a.cod_atendimento = 39241 --Registro
    and g.cod = 'E15' --Template de transoperatorio
    and f.cod_pergunta in ('2752','2753','2754','2755','2756','2757')
        /*
        Códigos:
            2752 - Cirurgiao, 2753 - 1º Auxiliar, 2754 - 2º Auxiliar, 2755 - 3º Auxiliar,
            2756 - 1º Anestesista, 2757 - 2º Anestesista.
        */
    and a.tp_atendimento = 'I' --Indicativo de Internação
    and c.id_tbcbopro_suspensao is null --IS NULL indica que a evolução não foi suspensa, caso contrário teria o CBO do profissional resposável pela suspensão.
order by
    c.data_hora_evolucao desc
