SELECT q.title, AS questions_title, t.name, AS category_name, q.created_at AS post_DATETIME
FROM q JOIN c ON q.id = c.questions_id 
JOIN t ON  q.tag_category_id = t.id; 

SELECT
    q.title as question_title, t.name as category_name, q.created_at as post_datetime
  FROM
    questions as q
  JOIN
    comments as c
  ON q.id = c.question_id
  JOIN
    tag_categories as t
  ON q.tag_category_id = t.id
  GROUP BY
    q.id
  HAVING
    COUNT(c.id) > 0;



