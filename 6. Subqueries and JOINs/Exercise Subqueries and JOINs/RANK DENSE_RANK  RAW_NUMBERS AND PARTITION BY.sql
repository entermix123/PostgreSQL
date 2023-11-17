RANKING SYSTEMS IN POSTGRES:

In siftuni_management_db

RANK()	- GIVE US RANKED INDEXES AS SAME POSSITIONS ARE COUNTED AND NEXT POSITION IS SKIPPED AS MANY TIMES AS DUPLICATED
-------------------------------------------------------------------
SELECT
    first_name,
    last_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) as "rank"
FROM
    employees
-------------------------------------------------------------------
RESULT:				RANK
Ken,Sanchez,128000.000,		1
James,Hamilton,86600.000,	2
Terri,Duffy,66000.000,		3
Laura,Norman,61600.000,		4
Dylan,Miller,53000.000,		5
Jean,Trenary,53000.000,		5
Wendy,Kahn,45800.000,		7
Roberto,Tamburello,45800.000,	7



DENSE_RANK() - GIVE US RANKING INDEXES WITH NO SKIPPING OF DUPLICATED PLACES
-------------------------------------------------------------------
SELECT
    first_name,
    last_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) as "rank"
FROM
    employees
-------------------------------------------------------------------

RESULT:				RANK

Ken,Sanchez,128000.000,		1
James,Hamilton,86600.000,	2
Terri,Duffy,66000.000,		3
Laura,Norman,61600.000,		4
Dylan,Miller,53000.000,		5
Jean,Trenary,53000.000,		5
Wendy,Kahn,45800.000,		6
Roberto,Tamburello,45800.000,	6




ROW_NUMBER() - GIVE US RANKED INDEXES AND DUPLICATES ARE ORDERED RANDOM
-------------------------------------------------------------------
SELECT
    first_name,
    last_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) as "rank"
FROM
    employees
-------------------------------------------------------------------
RESULT:				RANK

Ken,Sanchez,128000.000,		1
James,Hamilton,86600.000,	2
Terri,Duffy,66000.000,		3
Laura,Norman,61600.000,		4
Dylan,Miller,53000.000,		5	# same as 6
Jean,Trenary,53000.000,		6	# same as 5
Wendy,Kahn,45800.000,		7	# same as 8
Roberto,Tamburello,45800.000,	8	# same as 7


RANK(), DENSE_RANK(), ROW_NUMBER AND PARTITION BY - SORT RESULTS RANKED BY FILTERED CRITERIA - department_id in this ase
-------------------------------------------------------------------
SELECT
    first_name,
    last_name,
    department_id,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) as "rank"
FROM
    employees
-------------------------------------------------------------------
RESIULT				PARTITIONED		SALARY		RANK

Terri,Duffy,			1,			66000.000,	1
Roberto,Tamburello,		1,			45800.000,	2
Jossef,Goldberg,		1,			35200.000,	3
Gail,Erickson,			1,			35200.000,	4
Rob,Walters,			2,			32300.000,	1
Thierry,D`Hers,			2,			27500.000,	2
Sariya,Harnpadoungsataya,	4,			16900.000,	1
Kevin,Brown,			4,			16000.000,	2
Jill,Williams,			4,			14400.000,	3
Mary,Gibson,			4,			14400.000,	4
David,Bradley,			5,			40000.000,	1
