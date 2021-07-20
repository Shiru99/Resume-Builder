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