INSERT INTO
    users (id, username, password, active, roles)
VALUES
    (1, 'JohnD', '1234', 'true', 'ROLE_USER'),
    (2, 'JennyD', '1234', 'true', 'ROLE_USER'),
    (3, 'JamesD', '1234', 'true', 'ROLE_USER');

INSERT INTO
    userprofile (
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
        'https://james.doe@gmail.com',
        'www.jamesdoe.com',
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
    );

INSERT INTO
    skill (id, skill_name)
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
    -- (1,7),
    (1,8),
    (1,9),
    (2,1),
    (2,2),
    (2,3),
    (2,4),
    (2,5),
    -- (2,6),
    (2,7),
    (2,8),
    (2,9),
    (3,1),
    (3,2),
    -- (3,3),
    (3,4),
    (3,5),
    (3,6),
    (3,7),
    (3,8),
    (3,9)
;