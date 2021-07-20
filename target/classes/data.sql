INSERT INTO
    users (id, username, password, active, roles)
VALUES
    (1, 'John Doe', '1234', 'true', 'ROLE_USER'),
    (2, 'Jenny Doe', '1234', 'true', 'ROLE_USER'),
    (3, 'James Doe', '1234', 'true', 'ROLE_USER');

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
        summary
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
        'www.johndoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.'
    ),
    (
        2,
        2,
        'JennyD',
        'Backend Developer',
        'Jenny',
        'Doe',
        'jenny.doe@gmail.com',
        'www.jennydoe.com',
        '1234567890',
        'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.'
    ),
    (
        3,
        3,
        'JamesD',
        'Frontend Developer',
        'James',
        'Doe',
        'james.doe@gmail.com',
        'www.jamesdoe.com',
        '1234567890',
        'Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.'
    );

INSERT INTO
    user_education (
        id,
        college,
        degree,
        grade,
        start_date,
        end_date,
        user_id
    )
VALUES
    (
        1,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '2017-03-14',
        '2018-03-14',
        1
    ),
    (
        2,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '2013-03-14',
        '2017-03-14',
        1
    ),
    (
        3,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '2017-03-14',
        '2018-03-14',
        2
    ),
    (
        4,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '2013-03-14',
        '2017-03-14',
        2
    ),
    (
        5,
        'Massachusetts Institute of Technology (MIT) - United States',
        'Major, Economics',
        '4.0 GPA',
        '2017-03-14',
        '2018-03-14',
        3
    ),
    (
        6,
        'Indiana University - Bloomington, Indiana',
        'Dual Major, Economics and English',
        '3.9 GPA',
        '2013-03-14',
        '2017-03-14',
        3
    )
;


INSERT INTO
    user_experience (
        id,
        company,
        position,
        description,
        start_date,
        end_date,
        user_id
    )
VALUES
    (
        1,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '2018-03-14',
        '2021-07-14',
        1
    ),
    (
        2,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '2014-07-14',
        '2018-03-14',
        1
    ),
    (
        3,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '2018-03-14',
        '2021-07-14',
        2
    ),
    (
        4,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '2014-07-14',
        '2018-03-14',
        2
    ),
    (
        5,
        'Facebook',
        'Senior Interface Designer',
        'Intrinsicly enable optimal core competencies through corporate relationships. Phosfluorescently implement worldwide vortals and client-focused imperatives. Conveniently initiate virtual paradigms and top-line convergence.',
        '2018-03-14',
        '2021-07-14',
        3
    ),
    (
        6,
        'Apple Inc.',
        'Senior Interface Designer',
        'Progressively reconceptualize multifunctional "outside the box" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.',
        '2014-07-14',
        '2018-03-14',
        3
    )
;


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
        '2018-05-14',
        '2018-12-14',
        1
    ),
    (
        2,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '2018-03-14',
        '2018-05-14',
        1
    ),
    (
        3,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '2018-05-14',
        '2018-12-14',
        2
    ),
    (
        4,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '2018-03-14',
        '2018-05-14',
        2
    ),
    (
        5,
        'Emotion Detection',
        'ML Application : Python | nltk | sklearn ',
        'Emotion recognition is the process of identifying human emotion. People vary widely in their accuracy at recognizing the emotions of others. Use of technology to help people with emotion recognition is a relatively nascent research area. Generally, the technology works best if it uses multiple modalities in context.',
        '2018-05-14',
        '2018-12-14',
        3
    ),
    (
        6,
        'ASCII art',
        'Mobile Application : Dart | Flutter',
        'ASCII art is a graphic design technique that uses computers for presentation and consists of pictures pieced together from the 95 printable characters defined by the ASCII Standard from 1963 and ASCII compliant character sets with proprietary extended characters.',
        '2018-03-14',
        '2018-05-14',
        3
    )
;