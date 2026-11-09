select w.id, p.age, w.coins_needed, w.power
from wands w
join wands_property p
on w.code = p.code
where p.is_evil=0
and w.coins_needed=(
    select min(w1.coins_needed)
    from wands w1
    where w1.code=w.code
    and  w1.power=w.power
)
order by 
   w.power DESC,
   p.age desc;

