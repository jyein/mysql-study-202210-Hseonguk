
/*
	서브쿼리(하위쿼리)
    select 안에서 select 하는 방법
*/

select
	*
from
	student_mst
where
	school_id = 1;
    
 select
 	*
 from
 	student_mst stm
     left outer join school_mst scm on(scm.school_id = stm.school_id)
 where
     student_mst;


select
	*
from
	student_mst
where
	school_id in (select
					school_id
				from
					school_mst
				where
					school_name like '서울대%'
				or	school_name like '부산대%'
                );
                
select
	*
from
	student_mst
where
	school_id in (1, 3);
    -- in(a, b) = a와 b중에 하나라도 포함되어 있으면
    
select
	*,
    (select school_name from school_mst scm where scm.school_id = stm.school_id) as 번호  --  한컬럼에는 한가지의 데이터만 담아야 한다.
from
	student_mst stm;
    
set profiling = 1;
show profiles;  -- 내가 여태까지 실행한 쿼리에 걸리는 시간

-- count(*) as 총인원

select
    *
from
	student_mst,
    (select count(*) as 총인원 from student_mst) as 총인원;

select
	*,
    (select
		count(*)
	from
		student_mst) as 총인원
from
	student_mst;
    
select
	*
from
	student_mst sm
    left outer join (select count(*) as 총인원 from student_mst) sc on (1 = 1);
    
show profiles;
   

    
