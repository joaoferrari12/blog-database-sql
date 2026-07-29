-- Query 5: Which tag has the most posts? Count of posts per tag, including tags with zero, sorted high to low.
SELECT
TAG.TAG_NAME AS 'Tag Name',
COUNT(POST_TAG.POST_ID) AS 'Number of Tags'
FROM POST_TAG
RIGHT JOIN TAG
ON POST_TAG.TAG_ID = TAG.TAG_ID
GROUP BY TAG.TAG_NAME
ORDER BY COUNT(POST_TAG.POST_ID) DESC;