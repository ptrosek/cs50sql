CREATE INDEX 'enrollments_course'
ON enrollments ('course_id');

CREATE INDEX 'enrollments_student'
ON enrollments ('student_id');

CREATE INDEX 'student_name'
ON students ('name');

CREATE INDEX 'course_number'
ON courses ('number');

CREATE INDEX 'course_sem'
ON courses ('semester');

CREATE INDEX 'course_sem_dep'
ON courses ('semester','department');

CREATE INDEX 'courses_title'
ON courses ('title');

CREATE INDEX 'course_dep'
ON courses ('department');

