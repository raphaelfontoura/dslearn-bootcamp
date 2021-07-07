INSERT INTO TB_USER (name, email, password) VALUES
    ('Alex Brown', 'alex@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Bob Brown', 'bob@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Maria Green', 'maria@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT'),('ROLE_INSTRUCTOR'),('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id)
    VALUES (1,1), (2,1), (2,2), (3,1), (3,2), (3,3);

INSERT INTO tb_course (name, img_uri, img_gray_uri)
    VALUES ('Bootcamp HTML', 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id)
    VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z',1),
        ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z',1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id)
    VALUES ('Trilha HTML', 'Trilha principal do curso HTML', 1, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 1, 1),
        ('Forum', 'Tire suas dúvidas', 2, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 2, 1),
        ('Lives', 'Lives exclusivas para a turma', 3, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
    VALUES ('Capítulo 1', 'Apresentação do curso', 1, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 1, null),
        ('Capítulo 2', 'Conceitos de tags', 2, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 1, 1),
        ('Capítulo 3', 'Conhecendo tags avançadas', 2, 'https://c.pxhere.com/images/84/de/c46800ed7f9823cc820f44de5898-1575569.jpg!d', 1, 2);