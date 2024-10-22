select * from student;
select * from student where eng > 90;
select * from student where eng != 100;
select * from student where eng = 100;
select * from student where eng >= 100;

select math from student where name='가';
select math/2 from student where name='가';
select math + 2 from student where name='가';
select math * 2 from student where name='가';
select math * 2 곱하기 from student where name='가';
select math * 2 as 곱하기 from student where name='가';

select * from student;
select * from student where kor>=90 and eng > 80;
select * from student where kor>=90 or eng > 80;
select * from student where not kor>=90;
select * from student where kor>=90 and kor <= 100;
select * from student where kor between 90 and 100;

create table test_number(
    numps number(5,2), -- 5 : 전체 자리수, 2 : 소수점 2자리
    nump number(3), -- 3 : 정수 3자리
    num number -- 실수 , 정수 모두 포함
);
insert into test_number values(1.12345, 1.12345, 1.12345);
-- error 발생
insert into test_number values(1234.12345, 1.12345, 1.12345);
-- 해결
insert into test_number values(123.12345, 1.12345, 1.12345);
-- error 발생
insert into test_number values(1.12345, 1234.12345, 1.12345);
-- 해결
insert into test_number values(1.12345, 123.12345, 1.12345);
select * from test_number;

create table test_date( my_date date );
insert into test_date values( sysdate );
insert into test_date values( '2000/12/12' );
insert into test_date values( '2000/12/12 12:05:24' );
alter session set nls_date_format = 'YYYY/MM/DD HH:MI:SS';
select * from test_date;
SELECT * FROM TEST_DATE WHERE MY_DATE > '2000/12/13';

create table test_char(
    ch char(5),
    vch varchar2(20)
);
insert into test_char values('1','1');
select lengthb(ch), lengthb(vch) from test_char;

select * from employee where name like '김%'; -- 김으로 시작
select * from employee where name like '%똥'; -- 똥으로 끝남
select * from employee where name like '%이%'; -- 이라는 글자만 가지고 있으면 됨

-- asc : 오름차순, desc : 내림차순
select * from employee order by join_company desc; -- 내용을 가지고 온 다음 정렬
select * from employee order by join_company asc;
select * from employee order by join_company asc, name desc; -- 입사연도로 정렬하
 -- 되 입사연도가 같은 경우는 이름을 기준으로 정렬
 
create table test_func( id number , num varchar2(20));
insert into test_func values(1,'34.5678');
select * from test_func;
select round(num, 2) from test_func where id=1;
select round(num/2, 2) from test_func where id=1;
select trunc(num/2, 2) from test_func where id=1;
insert into test_func values (2,'55');
select num from test_func where id =2;
select mod(num,2) from test_func where id = 2;

insert into test_func values(11, 'welcome To oracle');
select * from test_func where id = 11;
select upper(num) from test_func where id = 11;
select lower(num) from test_func where id = 11;
select initcap(num) from test_func where id = 11;


create table test_class(class varchar2(10), score number);
Insert into test_class values('A반',11);
insert into test_class values('A반',12);
insert into test_class values('A반',13);
insert into test_class values('B반',21);
insert into test_class values('B반',22);
insert into test_class values('B반',23);
insert into test_class values('1',31);
insert into test_class values('1',32);
insert into test_class values('1',33);
insert into test_class values('',40);

select * from test_class;
select sum(score) from test_class;
select avg(score) from test_class;
select max(score) from test_class;
select count(class) from test_class; // null은 개수로 추가하지 않는다.
select count(*) from test_class; // *은 null도 포함해서 계산

select class,sum(score) from test_class group by class;
select class,sum(score) from test_class group by class having sum(score) > 60;
-- 그룹한테 조건을 달때는 having 사용

create table test_class1( id varchar(20) , pwd varchar(100), name varchar(100),
lesson varchar(20), teacher varchar(20));
insert into test_class1 values('aaa','aaa','홍길동','java','홍강사');
insert into test_class1 values('bbb','bbb','김개똥','java', '강강사');
insert into test_class1 values('ccc','ccc','고길똥','java','홍강사');
insert into test_class1 values('aaa','aaa','홍길동','python','김강사');
insert into test_class1 values('bbb','bbb','김개똥','html','고강사');
insert into test_class1 values('ccc','ccc','고길똥','html','고강사');
select * from test_class1;

-- 앞에 id, pwd, 이름은 반복이 되므로 하나의 테이블은 두개로 나누어서 만든다.
create table test_member(id varchar(20) primary key, pwd varchar(100), name varchar(100) );
insert into test_member values('aaa','aaa','홍길동');
insert into test_member values('bbb','bbb','김개똥');
insert into test_member values('ccc','ccc','고길똥');

create table test_tc(name varchar(20),lesson varchar(20), st_id varchar(20));
insert into test_tc values('홍강사','java','aaa');
insert into test_tc values('홍강사','java','bbb');
insert into test_tc values('홍강사','java','ccc');
insert into test_tc values('김강사','python','aaa');
insert into test_tc values('고강사','html','bbb');
insert into test_tc values('고강사','html','ccc');
select * from test_member;
select * from test_tc;
select * from test_member, test_tc;
select * from test_member inner join test_tc on test_member.id = test_tc.st_id;
select * from test_member left join test_tc on test_member.id = test_tc.st_id;
insert into test_member values('ddd','ddd','고도리');
select * from test_member;
select * from test_tc;
select * from test_member inner join test_tc on test_member.id = test_tc.st_id;
select * from test_member left join test_tc on test_member.id = test_tc.st_id;
 
 