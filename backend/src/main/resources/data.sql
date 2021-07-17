INSERT INTO TB_USER (name, email, password) VALUES
    ('Alex Brown', 'alex@gmail.com', '$2y$10$WVbV./nf2AJQ7p55l0r58O83Fgj2XEf9/Tt3xpJA9aVtx/RxTOlbe');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Bob Brown', 'bob@gmail.com', '$2y$10$WVbV./nf2AJQ7p55l0r58O83Fgj2XEf9/Tt3xpJA9aVtx/RxTOlbe');
INSERT INTO TB_USER (name, email, password) VALUES
    ('Maria Green', 'maria@gmail.com', '$2y$10$WVbV./nf2AJQ7p55l0r58O83Fgj2XEf9/Tt3xpJA9aVtx/RxTOlbe');

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

INSERT INTO tb_enrollment (user_id, offer_id ,enroll_moment, refund_moment, available, only_update)
    VALUES (1,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false),
        (2,1,TIMESTAMP WITH TIME ZONE '2020-11-20T14:00:00Z',null,true,false);

INSERT INTO tb_lesson (title, position, section_id)
    VALUES ('Aula 1 do Capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1,'Material de apoio: link','https://youtu.be/sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id)
    VALUES ('Aula 2 do Capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2,'','https://youtu.be/sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id)
    VALUES ('Aula 3 do Capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3,'','https://youtu.be/sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id)
    VALUES ('Tarefa do Capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date)
    VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1), (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resources/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resources/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', false, '/offers/1/resources/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
