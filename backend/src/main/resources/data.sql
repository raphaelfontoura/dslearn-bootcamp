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