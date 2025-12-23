-- Career 테이블 데이터
-- ========================================

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (1, 'IT/개발', '백엔드', '백엔드개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'java');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'sql');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (1, 'git');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (2, 'IT/개발', '프론트', '프론트엔드개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (2, 'html');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (2, 'css');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (2, 'javascript');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (3, 'IT/개발', '백엔드', '풀스택개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'html');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'css');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'javascript');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'java');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'sql');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (3, 'git');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (4, 'IT/개발', '시스템', '시스템프로그래머');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (4, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (4, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (4, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (4, 'posix');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (4, 'assembly');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (5, 'IT/개발', '시스템', '리눅스시스템엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (5, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (5, 'bash');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (5, 'c');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (6, 'IT/개발', '임베디드', '임베디드소프트웨어엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (6, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (6, '임베디드');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (6, 'arduino');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (6, 'linux');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (7, 'IT/개발', '임베디드', '펌웨어엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (7, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (7, 'assembly');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (7, '임베디드');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (8, 'IT/개발', '데이터', '데이터엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (8, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (8, 'sql');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (8, 'hadoop');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (8, 'spark');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (9, 'IT/개발', '데이터', '데이터분석가');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (9, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (9, 'pandas');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (9, 'numpy');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (9, 'sql');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (10, 'IT/개발', '데이터', '데이터사이언티스트');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (10, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (10, 'pandas');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (10, 'numpy');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (10, 'scipy');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (10, 'statsmodels');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (11, 'IT/개발', 'AI', '머신러닝엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (11, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (11, 'scikit-learn');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (11, 'numpy');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (11, 'pandas');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (12, 'IT/개발', 'AI', '딥러닝엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (12, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (12, 'pytorch');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (12, 'numpy');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (13, 'IT/개발', 'AI', 'AI연구원');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (13, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (13, 'pytorch');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (13, 'numpy');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (13, 'scipy');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (14, 'IT/개발', 'AI', '자연어처리엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (14, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (14, 'nltk');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (14, 'pytorch');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (15, 'IT/개발', 'AI', '컴퓨터비전엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (15, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (15, 'opencv');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (15, 'pytorch');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (16, 'IT/개발', 'AI', '강화학습엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (16, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (16, 'openai');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (16, 'gym');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (16, 'pytorch');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (17, 'IT/개발', '그래픽', '게임개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (17, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (17, 'unity');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (17, 'c#');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (18, 'IT/개발', '그래픽', '게임AI개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (18, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (18, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (18, 'unity');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (19, 'IT/개발', '그래픽', 'XR개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (19, 'unity');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (19, 'c#');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (19, 'arfoundation');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (20, 'IT/개발', '그래픽', '메타버스개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (20, 'unity');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (20, 'c#');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (20, 'opengl');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (21, 'IT/개발', '그래픽', '그래픽스엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (21, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (21, 'opengl');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (22, 'IT/개발', '네트워크', '웹서버엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (22, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (22, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (22, 'tcp/ip');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (23, 'IT/개발', '네트워크', '네트워크엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (23, 'tcp/ip');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (23, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (23, 'wireshark');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (24, 'IT/개발', '벡엔드', '데이터베이스엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (24, 'sql');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (24, 'mysql');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (25, 'IT/개발', '시스템', '컴파일러엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (25, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (25, 'llvm');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (26, 'IT/개발', '보안', '보안엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (26, 'c');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (26, 'linux');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (26, 'assembly');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (27, 'IT/개발', '백엔드', '소프트웨어아키텍트');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (27, 'uml');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (27, 'java');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (27, 'c++');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (28, 'IT/개발', '백엔드', '오픈소스개발자');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (28, 'git');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (28, 'github');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (28, 'c++');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (28, 'python');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (29, 'IT/개발', 'AI', 'AI플랫폼엔지니어');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (29, 'python');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (29, 'tensorflow');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (29, 'git');

INSERT IGNORE INTO career (id, major_category, middle_category, name) VALUES (30, 'IT/개발', '프론트', 'UIUX디자이너');
INSERT IGNORE INTO career_tech_stack (career_id, tech_stack) VALUES (30, 'figma');

