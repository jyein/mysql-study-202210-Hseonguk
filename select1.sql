# 색깔이 다른이유는 다른 예약어이기 때문이다 그때는 백쿼터를 사용해서 감싸주면 된다
# (원래는 컬럼과 테이블에는 백쿼터를 사용해야 하지만 예약어일때만 하면 된다)
-- select id, name, age from student_study_mst;
-- select * from student_study_mst; # select = 선택
# 내가 보고싶은 컬럼을 선택할수 있다

select
	id,
	`name`,
	age
from
	student_study_mst
where
# 해당 컬럼이 like(~처럼) ' %'에 포함하고 있으면 다 나온다

	# 김으로 시작하는것을 찾아라
	# `name` like '김%';
    
    # 경으로 끝나는것을 찾아라
	# `name` like '%경';
    
    # 앞뒤로 뭐가됫든간에 경을 포함하고 있는것을 찾아라.
    `name` like '%경%'
    
# 김으로 시작하는 것을 찾아라
# and `name` like '김%'; 

# 김으로 시작하는것 혹은 경이 해당하는 것을 찾아라
or `name` like '김%'; 
	
select
	*
from
	student_study_mst
where
/*
	age >= 25
and age <= 30; 이것을 아래와 같이 바꿀수 있다.
*/
	# age between 25 and 30; # 나이가 25살과 30살 사이의 것을 찾아라
	# age not between 25 and 30; # 나이가 25살과 30살 사이가 아닌것을 찾아라
	# not age = 25; # 보통은 이렇게 많이 쓴다
    # age is null; # age가 null인경우
    age is not null # age가 null이 아닌경우


