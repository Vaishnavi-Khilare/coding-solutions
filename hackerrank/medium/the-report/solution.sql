select 
    case
        when g.grade<8 then null
        else s.name
    end,
    g.grade,
    s.marks
from students s
inner join grades g
on s.marks between g.min_mark and g.max_mark
order BY
    g.grade DESC,
    s.name ASC,
    s.marks ASC;



