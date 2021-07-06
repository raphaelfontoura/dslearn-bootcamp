INSERT INTO TB_USER (name, email, password) VALUES
    ('Alex Brown', 'alex@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Bob Brown', 'bob@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Maria Green', 'maria@gmail.com', '$2y$10$xj5j16NqX8MlfQk0gGitseu5M.PtqKneLobRW3WigfdCFDImfE1fi');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT'),('ROLE_INSTRUCTOR'),('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id)
    VALUES (1,1), (2,1), (2,2), (3,1), (3,2), (3,3);
