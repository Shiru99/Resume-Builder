INSERT INTO users (id,username,password,active,roles) 
    VALUES  
        (1, 'John Doe' , '1234', 'true', 'ROLE_USER'),
        (2, 'Jenny Doe' , '1234', 'true', 'ROLE_USER'),
        (3, 'James Doe' , '1234', 'true', 'ROLE_USER');

    INSERT INTO userprofile (id,theme,username,summary) 
        VALUES  
            (1, 1 , 'John Doe', 'Dynamic and creative software developer with over 5 years of experience in producing robust code for high-volume companies. Eager to support the dev team at CDE Inc. with top-notch coding skills. In previous roles, doubled code-efficiency of ABC Inc., and increased customer retention by 30% among others.'),

            (2, 2 , 'Jenny Doe', 'Dynamic and creative software developer with over 5 years of experience in producing robust code for high-volume companies. Eager to support the dev team at CDE Inc. with top-notch coding skills. In previous roles, doubled code-efficiency of ABC Inc., and increased customer retention by 30% among others.'),
            
            (3, 3 , 'James Doe', 'Likable and dedicated IT consultant with over 5 years of experience in a fast-paced fin-tech company. Eager to offer superb analytical and computer skills to help ABC Inc grow its client base. In previous roles recognized for top company-wide quality satisfaction rating (over 99%). Also, reduced client wait time by 20% and boosted client satisfaction ratings by more than 40% in a single quarter. ');
