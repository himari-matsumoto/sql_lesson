SELECT questions.title, users.name FROM questions JOIN users ON questions.id = users.id;

SELECT q.title, u.name FROM questions q JOIN users u ON q.id = u.id;

