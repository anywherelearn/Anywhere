CREATE table member(
	mid VARCHAR2(50),
	password VARCHAR2(32),
	CONSTRAINT pk_mid PRIMARY KEY(mid)
);
INSERT INTO member(mid,password) values ('mldn','java');
INSERT INTO member(mid,password) VALUES('admin','hello');
COMMIT;