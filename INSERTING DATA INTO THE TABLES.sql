/*INSERTING DATA INTO THE TABLES*/
INSERT INTO users (username, created_at) 
VALUES ('Kenton_kirlin', '2017-02-16 18:22')

INSERT INTO photos (image_url, user_id)
VALUES ('http://elijah.biz',1),('http://otonnewi.com',2)

INSERT INTO Follows(Follower_id, Followee_id)
VALUES (2,1),(2,3),(2,4),(2,5)

INSERT INTO comments(comment_text,user_id,photo_id)
VALUES ('OTO NNEWI',2,2)
INSERT INTO LIKES(user_id, photo_id)
VALUES (2,1),(5,1),(9,1),(10,1),(11,1)

INSERT INTO tags(tag_name)
VALUES ('sunset'),('photi'), ('tochukwu')

INSERT INTO Photo_tags(photo_id,tag_id)
VALUES (1,18), (1,17),(1,21),(1,13)



