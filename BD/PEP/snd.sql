select
    a.leito,
    a.segurado as nome,
    b.nasc as data_nascimento,
    datediff(year, b.nasc, current_date) as idade,
    cast(a.entrada as date) as entrada,
    substr(a.horaent,1,2) || ':' || substr(a.horaent,3,4) as entrada_hora,
    datediff(day, a.entrada, current_date) as Dias_internado
from
    ricadint a
    inner join ricadpac b on b.pront = a.pront
where
    a.alta = '30.12.1899'
    and datediff(day, a.entrada, current_date) >= 2