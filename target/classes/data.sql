INSERT INTO users (id,username,password,active,roles) 
    VALUES  
        (1, 'John Doe' , '1234', 'true', 'ROLE_USER'),
        (2, 'Jenny Doe' , '1234', 'true', 'ROLE_USER'),
        (3, 'James Doe' , '1234', 'true', 'ROLE_USER');

    INSERT INTO userprofile (id,theme,username,summary) 
        VALUES  
            (1, 1 , 'John Doe', 'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.'),

            (2, 2 , 'Jenny Doe', 'I am an outgoing and energetic (ask anybody) young professional, seeking a career that fits my professional skills, personality, and murderous tendencies. My squid-like head is a masterful problem solver and inspires fear in who gaze upon it. I can bring world domination to your organization.'),
            
            (3, 3 , 'James Doe', 'Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.');
