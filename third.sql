SELECT t.name AS category_name, COUNT(q.id) AS question_count
FROM questions AS q JOIN tag_categories AS t ON q.tag_category_id = t.id
GROUP BY t.id;
