select * from professor;

select substr(email,instr(email,'@')+1) domain
, count(*) "EA"
, sum(count(*)) over() sum_domain
, count(*) /sum(count(*)) over() *100 "%"
from professor
group by substr(email,instr(email,'@')+1)
order by substr(email,instr(email,'@')+1);