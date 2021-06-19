PRAGMA foreign_keys = ON
create table publisher(
	id integer primary key,
	name text,
	country text
	);

create table books(
	id integer primary key,
	title text,
	publisher integer REFERENCES publisher(id)
	);
	
create table subjects(
	id integer primary key,
	name text
	);
	
create table books_subjects(
	book integer REFERENCES books(id),
	subject integer REFERENCES subjects(id)
	);

	



