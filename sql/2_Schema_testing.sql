USE Ecom_Project;

-- TC001 --
-- Check table presence in database schema --
show tables;

-- TC002 --
-- Check table name conventions --
show tables;

-- TC003 --
-- Check number of columns in a table --
SELECT count(*) AS NumberOfColumns FROM information_schema.columns WHERE table_name='users';
SELECT count(*) AS NumberOfColumns FROM information_schema.columns WHERE table_name='categories';

-- TC004 --
-- Check column names in a table --
SELECT column_name FROM information_schema.columns WHERE table_name='users';
SELECT column_name FROM information_schema.columns WHERE table_name='categories';
SELECT column_name FROM information_schema.columns WHERE table_name='cart';

-- TC005 --
-- Check data type of columns in table --
SELECT column_name, data_type FROM information_schema.columns WHERE table_name='users';
SELECT column_name, data_type FROM information_schema.columns WHERE table_name='categories';
SELECT column_name, data_type FROM information_schema.columns WHERE table_name='cart';

-- TC006 --
-- Check size of the columns in a table --
SELECT column_name, column_type FROM information_schema.columns WHERE table_name='users';
SELECT column_name, column_type FROM information_schema.columns WHERE table_name='categories';
SELECT column_name, column_type FROM information_schema.columns WHERE table_name='cart';

-- TC007 --
-- Check NULL constraints in users table --
select column_name, is_nullable FROM information_schema.columns WHERE table_name='users';
select column_name, is_nullable FROM information_schema.columns WHERE table_name='categories';
select column_name, is_nullable FROM information_schema.columns WHERE table_name='cart';

-- TC008 --
-- Check column keys in users table --
select column_name, column_key FROM information_schema.columns WHERE table_name='users';
select column_name, column_key FROM information_schema.columns WHERE table_name='categories';
select column_name, column_key FROM information_schema.columns WHERE table_name='cart';
