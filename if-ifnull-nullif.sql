/* ========== <제어문> ========== */
/*
	1. if (조건, 조건이 참일떄의 결과, 조건이 거짓일때의 결과)
*/
select
	id as 아이디,
    name as 이름,
    age as 나이,
    if(age between 20 and 29, '20대', '20대가 아님') as age_flag, /* 알리아서(Alias) = 별칭(별명) 이녀석의 컬럼명을 이것이라 해라*/
    1 as num
from
	student_study_mst;
    
    /*
		2. case (자바에서 if, else if, else)
        case
			when 조건1 then 조건1이 참일 때 결과
			when 조건2 then 조건2가 참일때 결과
            else 위의 모든 조건이 아날 때 결과
		end
    */
    
select
	*,
    case
		when age between 10 and 19 then '10대'
		when age between 20 and 29 then '20대'
		when age between 30 and 39 then '30대'
        else '10 ~ 30대가 아님'
	end as age_flag
from
	student_study_mst;
    
/*
	3. ifnull(null인지 확인할 대상 만약 확인 대상이 null이 아니면 그대로 출력,
			  확인 대상이 null이면 출력할 결과)
*/

select
	if(age is null, 0score_mstscore_mstsubject_mstsubject_mststudent_study_mstscore_mst, age) as `if`,
    ifnull(age, 0) as `ifnull`  # age가 0이면은(true면)
from
	student_study_mst;

/*
	nullif(A, B) A와 B가 서로 같으면 null을 결과로 출력, 다르면 A를 출력
*/

select distinct /* select 결과에서 중복을 제거해줌 */
	if(age = 26, null, age) as `if`,
	nullif(age, 26) as `nullif`
from
	student_study_mst;

