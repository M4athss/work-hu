/* Traz o último procedimento */
select distinct a.cod_atendimento,
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2125'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2126'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
           and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2127'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2128'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2121'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod = 'E15'
            and f.cod_pergunta = '326'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
      	order by
      		c.data_hora_evolucao desc
      	limit 1
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
            and f.cod_pergunta = '2121'
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
        where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
            and g.cod = 'E15'
            and f.cod_pergunta = '327'
            and a.tp_atendimento = 'I'
            and c.id_tbcbopro_suspensao is null
      	order by
      		c.data_hora_evolucao desc
      	limit 1
    ) as HoraFim
from atcabecatend a
    inner join htatendimento b on b.id_atcabecatend = a.id
    inner join prcabevol c on c.id_htatendimento = b.id
    inner join prevolpac d on d.id_cabevol = c.id_cabevol
    inner join prresposta e on e.id_resposta = d.id_resposta
    inner join prpergunta f on e.id_prpergunta = f.id
    inner join prevolucao g on g.id_evolucao = c.id_evolucao
where a.cod_atendimento = 39337 --Registro para trazer os procedimentos.
    and g.cod in ('M11','M12','M13','M14','M15','M16','M17','M18','M19','M20','M21','M22')
    and f.cod_pergunta in ('2124', '2121','2125','2126','2127','2128', '327', '326')
    and a.tp_atendimento = 'I'
    and c.id_tbcbopro_suspensao is null