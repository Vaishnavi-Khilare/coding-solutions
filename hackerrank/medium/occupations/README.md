# Occupations

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

[Pivot](https://en.wikipedia.org/wiki/Pivot_table) the *Occupation* column in **OCCUPATIONS** so that each *Name* is sorted alphabetically and displayed underneath its corresponding *Occupation*. The output should consist of four columns (*Doctor*, *Professor*, *Singer*, and *Actor*) in that specific order, with their respective names listed alphabetically under each column.

**Note:** Print **NULL** when there are no more names corresponding to an occupation.


**Input Format**

The **OCCUPATIONS** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png" />

*Occupation* will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-11-13T15:09:11.703Z  

```sql
SELECT 
    max(case when occupation ="Doctor" then name end)as Doctor,
    max(case when occupation ="Professor" then name end)as Professor,
    max(case when occupation ="Singer" then name end)as Singer,
    max(case when occupation ="Actor" then name end)as Actor
from (
    select name,occupation,
       row_number() over(
        partition by occupation
        order by name
       )as rn
    from occupations
)as temp
group by rn
order by rn
            

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/occupations/problem)