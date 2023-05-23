select
    a.leito,
    a.segurado as nome,
    b.nasc as data_nascimento,
    substr(((datediff(day, b.nasc, current_date))/365.25),1,2) as idade,
    c.data_hora_entrada,
    (datediff(hour, c.data_hora_entrada, current_date)/24) as Dias_internado
from
    ricadint a
    inner join ricadpac b on b.pront = a.pront
    inner join atcabecatend c on c.cod_atendimento = a.reg
where
    a.alta = '30.12.1899'
    and c.tp_atendimento = 'I'
    and (datediff(hour, c.data_hora_entrada, current_date)/24) >= 2
order by
    c.data_hora_entrada