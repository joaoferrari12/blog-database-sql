-- Query 3: Which post has the most tags? Count of tags per post, including posts with zero, sorted high to low.
SELECT
POST.TITLE AS 'Title',
COUNT(POST_TAG.POST_ID) AS 'Number of Tags'
FROM POST
LEFT JOIN POST_TAG
ON POST.POST_ID = POST_TAG.POST_ID
LEFT JOIN TAG
ON POST_TAG.TAG_ID = TAG.TAG_ID
GROUP BY POST.POST_ID
ORDER BY COUNT(POST_TAG.POST_ID) DESC;