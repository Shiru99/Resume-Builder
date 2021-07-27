INSERT INTO
    users (id, username, password, active, roles)
VALUES
    (1, 'JohnD', '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER'),
    (2, 'JennyD', '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER'),
    (3, 'JamesD', '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER'),
    (4, 'JerryD', '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER'),
    (5, 'JeanD',  '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER'),
    (6, 'JackieD', '{bcrypt}$2a$10$jBxirFzCFwYVAskGcBMINuxjxJuD/gXIWqzkkCjtRhFpkzm9H1NPO', 'true', 'ROLE_USER')
;
-- password - 1234

INSERT INTO
    user_profile (
        id,
        theme,
        user_name,
        job_title,
        first_name,
        last_name,
        email,
        website,
        phone_num,
        summary,
        profile_pic
    )
VALUES
    (
        1,
        1,
        'JohnD',
        'Web Designer',
        'John',
        'Doe',
        'john.doe@gmail.com',
        'https://www.johndoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.',
        'https://st2.depositphotos.com/1009634/7235/v/600/depositphotos_72350117-stock-illustration-no-user-profile-picture-hand.jpg'
    ),
    (
        2,
        2,
        'JennyD',
        'Backend Developer',
        'Jenny',
        'Doe',
        'jenny.doe@gmail.com',
        'https://www.jennydoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.',
        'https://st2.depositphotos.com/1009634/7235/v/600/depositphotos_72350117-stock-illustration-no-user-profile-picture-hand.jpg'
    ),
    (
        3,
        3,
        'JamesD',
        'Frontend Developer',
        'James',
        'Doe',
        'james.doe@gmail.com',
        'https://www.jamesdoe.com',
        '1234567890',
        'Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.',
        ''
    ),
    (
        4,
        4,
        'JerryD',
        'Web Designer',
        'Jerry',
        'Doe',
        'jerry.doe@gmail.com',
        'https://www.jerrydoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.',
        'https://st2.depositphotos.com/1009634/7235/v/600/depositphotos_72350117-stock-illustration-no-user-profile-picture-hand.jpg'
    ),
    (
        5,
        5,
        'JeanD',
        'Backend Developer',
        'Jean',
        'Doe',
        'jean.doe@gmail.com',
        'https://www.jeandoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.',
        'https://st2.depositphotos.com/1009634/7235/v/600/depositphotos_72350117-stock-illustration-no-user-profile-picture-hand.jpg'
    ),
    (
        6,
        6,
        'JackieD',
        'Frontend Developer',
        'Jackie',
        'Doe',
        'jackie.doe@gmail.com',
        'https://www.jackiedoe.com',
        '1234567890',
        'Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.',
        ''
    );
    

INSERT INTO
    user_education (
        id,
        college,
        degree,
        grade,
        start_date,
        end_date,
        current_education,
        user_id
    )
VALUES
    (
        1,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        1
    ),
    (
        2,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        1
    ),
    (
        3,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        2
    ),
    (
        4,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        2
    ),
    (
        5,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        3
    ),
    (
        6,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        3
    ),
    (
        7,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        4
    ),
    (
        8,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        4
    ),
    (
        9,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        5
    ),
    (
        10,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        5
    ),
    (
        11,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '14/03/2017',
        '14/03/2018',
        true,
        6
    ),
    (
        12,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '14/03/2013',
        '14/03/2017',
        false,
        6
    );

INSERT INTO
    user_experience (
        id,
        company,
        position,
        description,
        start_date,
        end_date,
        current_job,
        user_id
    )
VALUES
    (
        1,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        1
    ),
    (
        2,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        1
    ),
    (
        3,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        2
    ),
    (
        4,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        2
    ),
    (
        5,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        3
    ),
    (
        6,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        3
    ),
    (
        7,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        4
    ),
    (
        8,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        4
    ),
    (
        9,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        5
    ),
    (
        10,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        5
    ),
    (
        11,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '14/03/2018',
        '14/07/2021',
        true,
        6
    ),
    (
        12,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '14/07/2014',
        '14/03/2018',
        false,
        6
    );

INSERT INTO
    user_project (
        id,
        project_name,
        tools,
        description,
        start_date,
        end_date,
        user_id
    )
VALUES
    (
        1,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        1
    ),
    (
        2,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        1
    ),
    (
        3,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        2
    ),
    (
        4,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        2
    ),
    (
        5,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        3
    ),
    (
        6,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        3
    ),
    (
        7,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        4
    ),
    (
        8,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        4
    ),
    (
        9,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        5
    ),
    (
        10,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        5
    ),
    (
        11,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '14/05/2018',
        '14/12/2018',
        6
    ),
    (
        12,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '14/03/2018',
        '14/05/2018',
        6
    );

INSERT INTO
    skills (id, skill_name)
VALUES
    (1, 'HTML'),
    (2, 'CSS'),
    (3, 'Javascript'),
    (4, 'Jquery'),
    (5, 'PHP'),
    (6, 'CVS / Subversion'),
    (7, 'OS X'),
    (8, 'Windows XP/Vista'),
    (9, 'Linux')
;

INSERT INTO
    user_skills (user_id, skill_id)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (2,1),
    (2,2),
    (2,3),
    (2,4),
    (2,5),
    (2,6),
    (2,7),
    (2,8),
    (2,9),
    (3,1),
    (3,2),
    (3,3),
    (3,4),
    (3,5),
    (3,6),
    (3,7),
    (3,8),
    (3,9),
    (4,1),
    (4,2),
    (4,3),
    (4,4),
    (4,5),
    (4,6),
    (4,7),
    (4,8),
    (4,9),
    (5,1),
    (5,2),
    (5,3),
    (5,4),
    (5,5),
    (5,6),
    (5,7),
    (5,8),
    (5,9),
    (6,1),
    (6,2),
    (6,3),
    (6,4),
    (6,5),
    (6,6),
    (6,7),
    (6,8),
    (6,9)
;