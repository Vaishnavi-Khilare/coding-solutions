with RECURSIVE numbers as(
    select 1 as n
    union all
    select n+1
    from numbers 
    where n<20
)
select repeat("* ",n)
from numbers;
