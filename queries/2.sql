-- Query 2: List all tags for a given post (example: 'Mickey Mouse Cookies').
SELECT
POST.TITLE,
TAG.TAG_NAME
FROM POST
INNER JOIN POST_TAG
ON POST.POST_ID = POST_TAG.POST_ID
INNER JOIN TAG
ON POST_TAG.TAG_ID = TAG.TAG_ID
WHERE POST.TITLE = 'Mickey Mouse Cookies'