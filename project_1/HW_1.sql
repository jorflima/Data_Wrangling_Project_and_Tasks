-- First Homework

select * into jlima.demographics from Demographics
EXEC sp_RENAME '[jlima].[demographics].[tri_age]', 'Age', 'COLUMN'
EXEC sp_RENAME '[jlima].[demographics].[gendercode]', 'Gender', 'COLUMN'
EXEC sp_RENAME '[jlima].[demographics].[contactid]', 'ID', 'COLUMN'
EXEC sp_RENAME '[jlima].[demographics].[address1_stateorprovince]', 'State', 'COLUMN'
EXEC sp_RENAME '[jlima].[demographics].[tri_imaginecareenrollmentemailsentdate]', 'EmailSentdate', 'COLUMN'
EXEC sp_RENAME '[jlima].[demographics].[tri_enrollmentcompletedate]', 'Completedate', 'COLUMN'


alter table jlima.demographics drop column date_diff

alter table jlima.demographics add date_diff nvarchar(50)
update jlima.demographics set date_diff = datediff(day,try_convert(date,[EmailSentdate]),
try_convert(date, [Completedate]))
from [jlima].[demographics]


alter table jlima.demographics add Enrollment_Status nvarchar (75)

update jlima.demographics set Enrollment_Status = 'Complete'
where  [tri_imaginecareenrollmentstatus] = 167410011

update jlima.demographics set Enrollment_Status = 'Email Sent'
where [tri_imaginecareenrollmentstatus] = 167410001

update jlima.demographics set Enrollment_Status = 'Non responder'
where [tri_imaginecareenrollmentstatus] = 167410004

update jlima.demographics set Enrollment_Status = 'Facilitated Enrollment'
where [tri_imaginecareenrollmentstatus] = 167410005

update jlima.demographics set Enrollment_Status = 'Incomplete Enrollments'
where [tri_imaginecareenrollmentstatus] = 167410002

update jlima.demographics set Enrollment_Status = 'Opted Out' 
where [tri_imaginecareenrollmentstatus] = 167410003

update jlima.demographics set Enrollment_Status = 'Unprocessed'
where [tri_imaginecareenrollmentstatus] = 167410000

update jlima.demographics set Enrollment_Status = 'Second email sent'
where [tri_imaginecareenrollmentstatus] = 167410006

alter table jlima.demographics add Sex nvarchar (15)

update jlima.demographics set Sex = 'female'
where Gender = '2'

update jlima.demographics set Sex = 'male'
where Gender = '1'

update jlima.demographics set Sex = 'other'
where Gender = '167410000'

update jlima.demographics set Sex = 'Unknown'
where Gender = 'NULL'

alter table jlima.demographics add Age_Group nvarchar (15)

update jlima.demographics set Age_Group = '0-25'
where Age >= 0 and Age <=25

update jlima.demographics set Age_Group = '26-50'
where Age >25 and Age <=50 

update jlima.demographics set Age_Group = '51-75'
where Age >50 and Age <=75

update jlima.demographics set Age_Group = '76-100'
where Age >75 and Age <=100

update jlima.demographics set Age_group = '101 or more'
where Age >100

select * from [jlima].[demographics]