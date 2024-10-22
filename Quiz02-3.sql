select * from employee;
desc employee;
select * from employee where join_company >= '2015/01/01' and salary*12>=60000000;
select * from employee where (job = '삼성' or job ='엘지') and salary*12>=50000000;