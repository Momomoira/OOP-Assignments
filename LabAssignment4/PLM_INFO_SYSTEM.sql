/*2. Under PLM_INFO_SYSTEM create the below tables:*/

CREATE TABLE STUDENT  (
    student_no          VARCHAR(10)       Not Null
  , lastname            VARCHAR(20)       Default ' '
	, firstname           VARCHAR(20)       Not Null
	, address             VARCHAR(100)      Default ' '
	, email_address       VARCHAR(50)       Default ' '
	, gender              VARCHAR(1)        Default 'M'
	, birthday            VARCHAR(20)       Default ' '
	, course_code         VARCHAR(10)       Not Null
	, status              VARCHAR(1)        Default 'A'
	, cellno              VARCHAR(20)       Default ' '
	, cellno1             VARCHAR(20)       Default ' '
  , CONSTRAINT pk_student PRIMARY KEY (student_no)
  , CONSTRAINT fk_course FOREIGN KEY (course_code)
    REFERENCES COURSE(course_code)
  );
  
CREATE TABLE COURSE  (
    course_code         VARCHAR(10)       Not Null
	, description         VARCHAR(100)      Default ' '
	, status              VARCHAR(1)        Default 'A'
	, college_code        VARCHAR(10)       Not Null
  , CONSTRAINT pk_course PRIMARY KEY (course_code)
  , CONSTRAINT fk_college1 FOREIGN KEY (college_code)
    REFERENCES COLLEGE(college_code)
  );
  
CREATE TABLE COLLEGE  (
    college_code        VARCHAR(10)       Not Null
	, description         VARCHAR(100)      Default ' '
	, status              VARCHAR(1)        Default 'A'
  , CONSTRAINT pk_college PRIMARY KEY (college_code)
  );
  
CREATE TABLE FACULTY (
    faculty_no          VARCHAR(20)       Not Null
	, lastname            VARCHAR(20)       Default ' '
	, firstname           VARCHAR(20)       Not Null
	, address             VARCHAR(100)      Default ' '
	, email_address       VARCHAR(50)       Default ' '
	, gender              VARCHAR(1)        Default 'M'
	, birthday            VARCHAR(20)       Default ' '
	, college_code        VARCHAR(10)       Not Null
	, status              VARCHAR(1)        Default 'A'
  , CONSTRAINT pk_faculty PRIMARY KEY (faculty_no)
  , CONSTRAINT fk_college FOREIGN KEY (college_code)
    REFERENCES COLLEGE(college_code)
  );
  
 CREATE TABLE SUBJECT (
    subject_code        VARCHAR(10)       Not Null
	, description         VARCHAR(100)      Not Null
	, units               VARCHAR(10)       Not Null
	, lec_lab             VARCHAR(10)       Default ' '
	, college_code        VARCHAR(10)       Not Null
	, status              VARCHAR(1)        Default 'A'
  , CONSTRAINT pk_subject PRIMARY KEY (subject_code)
  , CONSTRAINT fk_college2 FOREIGN KEY (college_code)
    REFERENCES COLLEGE(college_code)
  );
  
  /*Add a new column (status) in SUBJECT table*/

ALTER TABLE SUBJECT DROP COLUMN status;

ALTER TABLE SUBJECT ADD 
    status              VARCHAR(1)        Default 'A';

/*4. Delete the column cellno1 in STUDENT table*/

ALTER TABLE STUDENT DROP COLUMN cellno1;

/*5. Change the column width of lastname and firstname to 200 characters.*/

ALTER TABLE STUDENT MODIFY firstname VARCHAR(200);
ALTER TABLE FACULTY MODIFY firstname VARCHAR(200);

ALTER TABLE STUDENT MODIFY lastname VARCHAR(200);
ALTER TABLE FACULTY MODIFY lastname VARCHAR(200);

--C. DML--

--1. Insert at least 20 records in STUDENT table.--

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-34011', 'Hinata', 'Shoyo', 'Barangay Poblacion, Makati City', 'shoyohinata@plm.edu.ph', 'M', TO_DATE('2001-06-21', 'YYYY-MM-DD'), 'BSCE', 'A', '09123456701');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-32022', 'Oikawa', 'Tooru', 'Barangay San Lorenzo, Makati City', 'tooruoikawa@plm.edu.ph', 'P', TO_DATE('2001-03-22', 'YYYY-MM-DD'), 'BSCS', 'A', '09123456702');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-23003', 'Tsukishima', 'Kei', 'Barangay Santo Niño, Quezon City', 'keitsukishima@plm.edu.ph', 'M', TO_DATE('2001-02-05', 'YYYY-MM-DD'), 'BSIT', 'A', '09123456703');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-34004', 'Kageyama', 'Tobio', 'Barangay Bahay Toro, Quezon City', 'tobiokageyama@plm.edu.ph', 'M', TO_DATE('2001-12-22', 'YYYY-MM-DD'), 'BSN', 'A', '09123456704');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-39015', 'Yamaguchi', 'Tadashi', 'Barangay San Antonio, Pasig City', 'tadashiyamaguchi@plm.edu.ph', 'M', TO_DATE('2001-07-04', 'YYYY-MM-DD'), 'BSA', 'A', '09123456705');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-17206', 'Nishinoya', 'Yuu', 'Barangay San Roque, Marikina City', 'yuunishinoya@plm.edu.ph', 'M', TO_DATE('2001-10-10', 'YYYY-MM-DD'), 'BSCOE', 'A', '09123456706');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-32037', 'Iwaizumi', 'Hajime', 'Barangay San Isidro, Makati City', 'hajimeiwaizumi@plm.edu.ph', 'P', TO_DATE('2001-04-18', 'YYYY-MM-DD'), 'BSIT', 'A', '09123456707');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-23008', 'Sugawara', 'Koushi', 'Barangay Sto. Domingo, Quezon City', 'koushisugawara@plm.edu.ph', 'M', TO_DATE('2001-09-09', 'YYYY-MM-DD'), 'BSCE', 'A', '09123456708');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-30019', 'Shirabu', 'Kenjiro', 'Barangay Malanday, Marikina City', 'kenjiroshirabu@plm.edu.ph', 'M', TO_DATE('2001-04-10', 'YYYY-MM-DD'), 'BSCOE', 'A', '09123456709');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-32010', 'Bokuto', 'Koutarou', 'Barangay Manggahan, Pasig City', 'koutaroubokuto@plm.edu.ph', 'M', TO_DATE('2001-10-05', 'YYYY-MM-DD'), 'BSPT', 'A', '09123456710');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-39011', 'Tanaka', 'Ryunosuke', 'Barangay Santa Lucia, Pasig City', 'ryunosuketanaka@plm.edu.ph', 'M', TO_DATE('2001-03-03', 'YYYY-MM-DD'), 'BSECE', 'A', '09123456711');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-28012', 'Azumane', 'Asahi', 'Barangay San Vicente, San Pedro', 'asahiazumane@plm.edu.ph', 'M', TO_DATE('2001-05-05', 'YYYY-MM-DD'), 'BSN', 'A', '09123456712');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-25013', 'Ushijima', 'Wakatoshi', 'Barangay San Antonio, Pasig City', 'wakatoshiushijima@plm.edu.ph', 'M', TO_DATE('2001-08-14', 'YYYY-MM-DD'), 'BSCOE', 'A', '09123456713');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2022-31014', 'Kuroo', 'Tetsurou', 'Barangay Fortune, Marikina City', 'tetsuroukuroo@plm.edu.ph', 'M', TO_DATE('2001-02-24', 'YYYY-MM-DD'), 'BSPT', 'A', '09123456714');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-24015', 'Kenma', 'Kozume', 'Barangay Matandang Balara, Quezon City', 'kenmakozume@plm.edu.ph', 'Z', TO_DATE('2001-06-12', 'YYYY-MM-DD'), 'BSIT', 'A', '09123456715');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-32016', 'Kurosu', 'Rei', 'Barangay Tandang Sora, Quezon City', 'reikurosu@plm.edu.ph', 'F', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'BSCS', 'A', '09123456716');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-34017', 'Kita', 'Shinsuke', 'Barangay Barangka, Marikina City', 'shinsukekita@plm.edu.ph', 'M', TO_DATE('2001-07-01', 'YYYY-MM-DD'), 'BSECE', 'A', '09123456717');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-25018', 'Kogane', 'Kinnosuke', 'Barangay San Jose, Antipolo', 'kinnosukekogane@plm.edu.ph', 'M', TO_DATE('2001-03-30', 'YYYY-MM-DD'), 'BSCE', 'A', '09123456718');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2024-34019', 'Futakuchi', 'Kenji', 'Barangay Quirino 2nd Avenue, Quezon City', 'kenjifutakuchi@plm.edu.ph', 'M', TO_DATE('2001-12-12', 'YYYY-MM-DD'), 'BSEE', 'A', '09123456719');

INSERT INTO STUDENT (student_no, lastname, firstname, address, email_address, gender, birthday, course_code, status, cellno) 
VALUES ('2023-23020', 'Aone', 'Takanobu', 'Barangay Bagumbayan, Taguig City', 'takanobuaone@plm.edu.ph', 'M', TO_DATE('2001-09-15', 'YYYY-MM-DD'), 'BSCE', 'A', '09123456720');

SELECT * FROM STUDENT;

--2. Insert all the courses in PLM to COURSE table.--

-- CISTM --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSCS','Bachelor of Science in Computer Science','A','CISTM');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSIT','Bachelor of Science in Information Technology','A','CISTM');

-- CET --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSCHE','Bachelor of Science in Chemical Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSCE','Bachelor of Science in Civil Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSCOE','Bachelor of Science in Computer Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEE','Bachelor of Science in Electrical Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSECE','Bachelor of Science in Electronics Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSME','Bachelor of Science in Mechanical Engineering','A','CET');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSMFE','Bachelor of Science in Manufacturing Engineering','A','CET');

-- CN --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSN','Bachelor of Science in Nursing','A','CN');

-- CPT --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSPT','Bachelor of Science in Physical Therapy','A','CPT');

-- PLM BS --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA','Bachelor of Science in Accountancy','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA-FM','Bachelor of Science in Business Administration major in Financial Management','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA-MM','Bachelor of Science in Business Administration major in Marketing Management','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA-OM','Bachelor of Science in Business Administration major in Operations Management','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA-HRM','Bachelor of Science in Business Administration major in Human Resource Management','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSA-BE','Bachelor of Science in Business Administration major in Business Economics','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BS-ENTREP','Bachelor of Science in Entrepreneurship','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSREM','Bachelor of Science in Real Estate Management','A','PLM_BS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSTM','Bachelor of Science in Tourism Management','A','PLM_BS');

-- CASBE --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BS-ARCH','Bachelor of Science in Architecture','A','CASBE');

-- CHASS --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BAC','Bachelor of Arts in Communication','A','CHASS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSSW','Bachelor of Science in Social Work','A','CHASS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BMMP','Bachelor of Music in Music Performances','A','CHASS');

-- CS --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSBio','Bachelor of Science in Biology','A','CS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSMath','Bachelor of Science in Mathematics','A','CS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSChem','Bachelor of Science in Chemistry','A','CS');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSPsy','Bachelor of Science in Psychology','A','CS');

-- CED --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BECEd','Bachelor of Early Childhood Education','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEEd','Bachelor of Elementary Education','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSNEd','Bachelor of Special Needs Education','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BPED','Bachelor of Physical Education','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEd-Eng','Bachelor of Secondary Education major in English','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEd-Fil','Bachelor of Secondary Education major in Filipino','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEd-Math','Bachelor of Secondary Education major in Mathematics','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEd-Sci','Bachelor of Secondary Education major in Science','A','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSEd-SS','Bachelor of Secondary Education major in Social Studies','A','CED');

-- SOG --
INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BPA','Bachelor of Public Administration','A','SOG');

-- extra --

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES('BSNED', 'Bachelor of Special Needs Education','B','CED');

INSERT INTO COURSE (course_code, description, status, college_code)
VALUES ('BECED', 'Bachelor of Early Childhood Education','B', 'CED');


SELECT * FROM COURSE;

-- 3. Insert all the colleges in PLM to COLLEGE table. --

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CASBE', 'College of Architecture and Sustainable Built Environments', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CED', 'College of Education', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CET', 'College of Engineering', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CHASS', 'College of Humanities, Arts, and Social Science', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CN', 'College of Nursing', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CPT', 'College of Physical Therapy', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CS', 'College of Science', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CBA', 'College of Business Administration', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('PLM_BS', 'PLM Business School', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('SOG', 'School of Government', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('SPH', 'School of Public Health', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('GSL', 'Graduate School of Law', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CA', 'College of Accountancy', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CTHM', 'College of Tourism and Hospitality Management', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CISTM', 'College of Information Systems and Technology Management', 'A');

INSERT INTO COLLEGE (college_code, description, status)
VALUES ('CPA', 'College of Public Administration', 'A');

SELECT * FROM COLLEGE;

-- 4. Insert at least 5 teachers in PLM to FACULTY table. --

INSERT INTO FACULTY (faculty_no, lastname, firstname, address, email_address, gender, birthday, college_code, status)
VALUES ('FAC001', 'Ukai', 'Keishin', 'Makati Ave, Makati City, Metro Manila', 'ukai.keishin@plm.edu.ph', 'M', '1985-07-15', 'CISTM', 'P');

INSERT INTO FACULTY (faculty_no, lastname, firstname, address, email_address, gender, birthday, college_code, status)
VALUES ('FAC002', 'Takeda', 'Ittetsu', 'Brgy. San Antonio, Pasig City, Metro Manila', 'takeda.ittetsu@plm.edu.ph', 'M', '1982-04-10', 'CET', 'P');

INSERT INTO FACULTY (faculty_no, lastname, firstname, address, email_address, gender, birthday, college_code, status)
VALUES ('FAC003', 'Washijo', 'Tanji', 'Quezon Ave, Quezon City, Metro Manila', 'washijo.tanji@plm.edu.ph', 'M', '1970-02-08', 'CET', 'P');

INSERT INTO FACULTY (faculty_no, lastname, firstname, address, email_address, gender, birthday, college_code, status)
VALUES ('FAC004', 'Nekomata', 'Yasufumi', 'Vito Cruz, Malate, Manila', 'nekomata.yasufumi@plm.edu.ph', 'M', '1968-11-05', 'CHASS', 'P');

INSERT INTO FACULTY (faculty_no, lastname, firstname, address, email_address, gender, birthday, college_code, status)
VALUES ('FAC005', 'Shimada', 'Makoto', 'Ayala Ave, Makati City, Metro Manila', 'shimada.makoto@plm.edu.ph', 'M', '1983-03-27', 'CED', 'P');

SELECT * FROM FACULTY; 

-- 5. Insert all your subjects from 1st year to 2nd year to SUBJECT table.-- 

-- 1st Year (1st Sem) --
INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0101', 'Introduction to Computing', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0101.1', 'Introduction to Computing', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0102', 'Fundamentals of Programming', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0102.1', 'Fundamentals of Programming', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0102', 'Discrete Structure 1', '3', 'CS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('STS0002', 'Science, Technology and Society', '3', 'CS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('MMW0001', 'Mathematics in the Modern World', '3', 'CS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('PCM0006', 'Purposive Communications', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('IPP0010', 'Interdisiplinaryong Pagbasa at Pagsulat', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('PED0001', 'Foundation of Physical Activities', '2', 'CPT');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('NSTP1', 'National Service Training Program', '3', 'CPA');

-- 1st Year (2nd Sem) --
INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0103', 'Intermediate Programming', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0103.1', 'Intermediate Programming', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0104', 'Data Structures and Algorithms', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0104.1', 'Data Structures and Algorithms', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0211', 'Discrete Structures 2', '3', 'CS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0223', 'Human Computer Interaction', '3', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('TCW0005', 'The Contemporary World', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('RPH0004', 'Readings in Philippine History', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('LWR0009', 'Life and Works of Rizal', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('PED_PE', 'PE Elective (12, 13, or 14)', '2', 'CPT');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('NSTP2', 'National Service Training Program', '3', 'CPA');

-- 2nd Year (1st Sem) --
INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0212', 'Object Oriented Programming', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0212.1', 'Object Oriented Programming', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0213', 'Logic Design and Digital Computer Circuits', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0213.1', 'Logic Design and Digital Computer Circuits', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0224', 'Operation Research', '3', 'CS');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0105', 'Information Management', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0105.1', 'Information Management', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('ITE0001', 'Living in the IT Era', '3', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('ETH0008', 'Ethics', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('UTS0003', 'Understanding the Self', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('PE13', 'PE Elective (12, 13, or 14)', '2', 'CPT');

-- 2nd Year (2nd Sem) --
INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0221', 'Algorithm and Complexity', '3', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0222', 'Architecture and Organization', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('CSC0222.1', 'Architecture and Organization', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0106', 'Applications Development and Emerging Technologies', '3', 'lec', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, lec_lab, college_code)
VALUES ('ICC0106.1', 'Applications Development and Emerging Technologies', '1', 'lab', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CSC0316', 'Information Assurance Security', '3', 'CISTM');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('CBM0016', 'The Entrepreneurial Mind', '3', 'CBA');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('GES0013', 'Environmental Science', '3', 'CASBE');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('AAP0007', 'Art Appreciation', '3', 'CHASS');

INSERT INTO SUBJECT (subject_code, description, units, college_code)
VALUES ('PE14', 'PE Elective (12, 13, or 14)', '2', 'CPT');

SELECT * FROM SUBJECT;

-- 6. Update all status of table FACULTY from 'A' to 'Y' if college_code = 'CET' --

UPDATE FACULTY 
SET status = 'Y' 
WHERE college_code = 'CET';


-- 7. Update all status of table COURSE from 'A' to 'Y' if course_code = 'BSN' or course_code = 'BSCoE' --

UPDATE COURSE 
SET status = 'Y' 
WHERE course_code IN ('BSN', 'BSCOE');

SELECT * FROM COURSE WHERE status = 'Y';

-- 8. Delete all records of table COURSE whose status is no equal to 'A' --

DELETE FROM COURSE
WHERE status NOT IN ('A');

SELECT * FROM COURSE WHERE status NOT IN ('A');

-- 9. Delete all records of table STUDENT whose gender is not 'M' or 'F' --

DELETE FROM STUDENT
WHERE gender NOT IN ('M', 'F');

SELECT * FROM STUDENT WHERE gender NOT IN ('M', 'F');

-- 10. commit all the changes --

commit;

/*D. Other requirements*/

--1. Allow the user francis, jose, maria and josefa to view (SELECT) the table STUDENT from PLM_INFO_SYSTEM user.
GRANT SELECT ON student TO francis, jose, maria, josefa;

--2. Allow the user francis and jose to view (SELECT) the tables COURSE and COLLEGE from PLM_INFO_SYSTEM user.
GRANT SELECT ON COURSE TO francis, jose;
GRANT SELECT ON COLLEGE TO francis, jose;

--3. Allow the user maria and josefa to view (SELECT) the tables EMPLOYEE and SUBJECT from PLM_INFO_SYSTEM user.
GRANT SELECT ON FACULTY TO maria, josefa;
GRANT SELECT ON SUBJECT TO maria, josefa;

--4. Allow the user francis and jose to make an insert, update and delete any record in STUDENT table from PLM_INFO_SYSTEM user.
GRANT INSERT, UPDATE, DELETE ON STUDENT TO francis, jose;
