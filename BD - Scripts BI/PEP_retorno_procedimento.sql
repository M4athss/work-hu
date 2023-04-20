/*
1. Olhar template por tamplete do ato cirurgico
2. condicional para data_hora_evolucao e data_hora_evolucao_retroativa
3. adaptar consulta para o vertica.
*/

select first 1 a.cod_atendimento,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2121'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimenti_principal,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2124'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimento2,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2656'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimento3,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2657'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimento4,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2658'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimento5,
    (
        select
            i.cod_procedimento
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2159'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as procedimento6,
    (
        select
            cast(c.data_hora_evolucao as date)
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2124'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as DataEntrada,
    (
        select
            d.resphora
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'E15'
            and f.cod_pergunta = '326'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as HoraEntrada,
    (
        select
            cast(c.data_hora_evolucao as date)
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
        where a.cod_atendimento = :reg
            and g.cod = 'M21'
            and f.cod_pergunta = '2124'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as DataFim,(
        select
            d.resphora
        from atcabecatend a
            inner join htatendimento b on b.id_atcabecatend = a.id
            inner join prcabevol c on c.id_htatendimento = b.id
            inner join prevolpac d on d.id_cabevol = c.id_cabevol
            inner join prresposta e on e.id_resposta = d.id_resposta
            inner join prpergunta f on e.id_prpergunta = f.id
            inner join prevolucao g on g.id_evolucao = c.id_evolucao
            left join htprocto h on h.id = d.id_htprocto
            left join tbprocto i on i.id = h.id_tbprocto
        where a.cod_atendimento = :reg
            and g.cod = 'E15'
            and f.cod_pergunta = '327'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
    ) as HoraFim

from atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao
    left join htprocto h on h.id = d.id_htprocto
    left join tbprocto i on i.id = h.id_tbprocto
where a.cod_atendimento = :reg
    and g.cod in ('M21', 'E15')
    and f.cod_pergunta in ('2124', '2121', '327', '326')
    and a.tp_atendimento = 'I'
    and c.id_tbcbopro_suspensao is null