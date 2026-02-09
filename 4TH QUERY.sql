SELECT * FROM USERS
SELECT * FROM PHOTOS
SELECT * FROM LIKES
SELECT * FROM COMMENTS
SELECT * FROM FOLLOWS
SELECT * FROM TAGS
SELECT * FROM PHOTO_TAGS

/* GETTING THE OLDEST USERS FROM OUR INSTAGRAM DATABASE AND LIMITING BY 2*/
SELECT  * FROM USERS
ORDER BY created_at
LIMIT 2;

/*GETTING INACTIVE USERS FROM OUR DATABASE*/
SELECT USERNAME
FROM USERS
LEFT JOIN photos ON users.id=photos.user_id
WHERE photos.id IS NULL;

/*GETTING THE MOST ACTIVE USERS FROM THE DATABASE*/

SELECT users.username, COUNT(photos.image_url)
FROM USERS
JOIN photos ON users.id=photos.user_id
GROUP BY users.id
ORDER BY 2 DESC;

/*getting people that have commented at least once on the photos*/
SELECT username, comment_text
FROM users
LEFT JOIN comments ON users.id = comments.user_id
GROUP BY users.id, comment_text
HAVING comment_text IS NOT NULL;
