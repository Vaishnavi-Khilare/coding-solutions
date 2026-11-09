select h.hacker_id ,h.name
from hackers h
join submissions s
    on h.hacker_id=s.hacker_id
join challenges c
    on s.challenge_id=c.challenge_id
join difficulty d
    on c.difficulty_level=d.difficulty_level
where s.score =d.score
group by h.hacker_id ,h.name
having count(c.challenge_id)>1
order by count(c.challenge_id) desc,h.hacker_id asc;
 
