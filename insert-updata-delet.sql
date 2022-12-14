/*
	DML
    insert	C	데이터 추가
    select	R 	데이터 조회
    update	U	데이터 수정
    delete	D 	데이터 삭제
*/

set sql_safe_updates = 0; 
# 이걸 해주지 않으면 업데이트와 딜리트를 사용할수 없다.

/* ======= <insert> ======= */
select * from student_study_mst;

insert into
	student_study_mst_(
    id,
    name,
    age)
    values(
    1,
    '김',
    100);

insert into
 student_study_mst
	(id, name, age)
 values
	(1, '정빈', 20);
insert into student_study_mst(name, id, age) values('김규민', 2, 17);
insert into student_study_mst(name, id) values('박경효', 23);
insert into student_study_mst values(3, '김혜진', 26);

insert into student_study_mst
values
(5, '윤도영', 25),
(6, '김철수', 25),
(7, '김경민', 32),
(8, '장혜민', 26);

/* ======= <update> ======= */
# 데이터 수정

update student_study_mst
set
	#set안에서 = 를 쓰면 대입이다
	name = '정순동',
    age = 22
# 이상태로 넣어버리면 전부다 위에것으로 바뀌어버리니 where을 사용해야한다
# 
where
	# where안에 = 를 쓰면 비교연산자이다
	id = 6;
    
update student_study_mst
set
	age = age + 1
where
	id = 6;
    
/* ======= <delete> ======= */
delete
from
	student_study_mst
where
	id = 1;

# delete는 key값으로 지워야 한다. (공통된 것들이 있는경우에 전부다 삭제됨)

/* ======= <select> ======= */

