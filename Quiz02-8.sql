create table test_student(id varchar(20), name varchar(20), class varchar(20));
Insert into test_student values('aaa','홍길동','A반');
insert into test_student values('bbb','김개똥','B반');
insert into test_student values('ccc','고길동','C반');
insert into test_student values('ddd', '심순이', 'B반');

create table test_lesson(id varchar(20), lesson varchar(20), score int);
insert into test_lesson values('aaa','python',80);
insert into test_lesson values('aaa','java',90);
insert into test_lesson values('aaa','c언어',70);
insert into test_lesson values('bbb','server2012',70);
insert into test_lesson values('bbb','linux',90);
insert into test_lesson values('ccc','jsp',100);

select * from test_lesson;
drop table test_lesson;

-- 1.
select * from test_student inner join test_lesson on test_student.id = test_lesson.id;

-- 2.
select * from test_student left join test_lesson on test_student.id = test_lesson.id
order by score desc;

-- 3
select s.*, l.lesson, l.score from test_student s inner join test_lesson l on s.id = l.id;

-- 4
select * from test_student inner join test_lesson on test_student.id = test_lesson.id where name='홍길동';

-- 5
select * from test_student left join test_lesson on test_student.id = test_lesson.id where lesson is null;

-- 6
select s.name, s.class, sum(l.score), avg(l.score) from test_student s left join test_lesson l on s.id = l.id group by s.name, s.class;

