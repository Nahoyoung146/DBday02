select * from employee;
select * from employee where name like '%김%' and salary*12>=30000000 order by job asc, salary desc;
-- 조건이 먼저, 정렬은 무조건 마지막