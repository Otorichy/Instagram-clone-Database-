/*LIKES TABLE CREATION*/
CREATE TABLE FOLLOWS(
 Follower_id INT NOT NULL,
 Followee_id INT NOT NULL,
 created_at TIMESTAMP DEFAULT NOW(),
 FOREIGN KEY(Follower_id) REFERENCES users(id),
 FOREIGN KEY(Followee_id) REFERENCES users(id),
 PRIMARY KEY(Follower_id, Followee_id)
 );
