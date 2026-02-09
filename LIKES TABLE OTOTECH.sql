
/*LIKES TABLE CREATION*/
CREATE TABLE Likes(
User_id INT NOT NULL,
Photo_id INT NOT NULL,
created_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY(user_id) REFERENCES Users(id),
FOREIGN KEY(Photo_id) REFERENCES Photos(id),
PRIMARY KEY(user_id,Photo_id)
);
