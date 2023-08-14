INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	1,
	'CODE_TEST',
	'엄청난코드',
	0,
	1,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	2,
	'CODE_TEST_1',
	'엄청난부하1',
	1,
	1,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	3,
	'CODE_TEST_2',
	'엄청난부하2',
	1,
	2,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	4,
	'CODE_MO',
	'모험가',
	0,
	2,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	5,
	'CODE_MO_JOB_1',
	'전사',
	4,
	1,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
(
	code_seq,
	code,
	code_nm,
	parent_code_seq,
	order_no,
	use_yn,
	del_yn,
	reg_id, 
	reg_dt
) 
VALUES 
(
	6,
	'CODE_MO_JOB_2',
	'마법사',
	4,
	2,
	'Y',
	'N',
	'ybh',
	now()
);

INSERT INTO codedto 
( code_seq, code, code_nm, parent_code_seq, order_no, use_yn, del_yn, reg_id, reg_dt ) 
VALUES 
( 7, 'CODE_MO_JOB_3', '도적', 4, 3, 'Y', 'N', 'ybh', now() );