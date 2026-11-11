# Draw The Triangle 2

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Write a query to print all *prime numbers* less than or equal to $1000$. Print your result on a single line, and use the ampersand ($\&$) character as your separator (instead of a space).


For example, the output for all prime numbers $\leq 10$ would be:

	2&3&5&7

**Input Format**

 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-11-11T17:14:11.953Z  

```sql
with RECURSIVE numbers as(
    select 1 as n
    union all
    select n+1
    from numbers 
    where n<20
)
select repeat("* ",n)
from numbers;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/print-prime-numbers/problem)