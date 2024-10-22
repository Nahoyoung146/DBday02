select class,count(*) from test_class group by class;
select class,avg(score) from test_class group by class order by avg(score) desc;
select class,max(score),min(score) from test_class group by class;