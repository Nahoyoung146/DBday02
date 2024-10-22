create table test_company(
  name varchar2(20),
  연봉 varchar2(20),
  class varchar2(20)
);
insert into test_company values('hong gil dong_M','3600','Manager');
insert into test_company values('kim gea ddong_M','2555','ManaGer');
insert into test_company values('Go gil dong_M','2800','ManaGER');
insert into test_company values('hong gil dong_E','3111','EmpLoyee');
insert into test_company values('kim gea ddong_E','2600','EmpLoYee');
insert into test_company values('Go gil dong_E','2950','employee');
select * from test_company where lower(class)='manager';
select * from test_company where lower(class)='employee' and 연봉>=2800;
select initcap(name),trunc(연봉/12,0),class from test_company;
