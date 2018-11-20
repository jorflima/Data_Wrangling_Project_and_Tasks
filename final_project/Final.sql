-- Final 

--Problem 1
--Letter a)

select * from jlima.IC_BP

-- Creating a new column called BPStatus that will receive values derived from BPAlerts

alter table jlima.IC_BP add BPStatus nvarchar(50)


SELECT DISTINCT BPAlerts FROM [jlima].[IC_BP];

update jlima.IC_BP set [BPStatus]='Controlled blood pressure' where [BPAlerts] = 'Hypo1'
update jlima.IC_BP set [BPStatus]='Controlled blood pressure' where [BPAlerts] = 'Normal'
update jlima.IC_BP set [BPStatus]='Uncontrolled blood pressure' where [BPAlerts] = 'Hypo2'
update jlima.IC_BP set [BPStatus]='Uncontrolled blood pressure' where [BPAlerts] = 'HTN1'
update jlima.IC_BP set [BPStatus]='Uncontrolled blood pressure' where [BPAlerts] = 'HTN2'
update jlima.IC_BP set [BPStatus]='Uncontrolled blood pressure' where [BPAlerts] = 'HTN3'


alter table jlima.IC_BP add DichoBP numeric(1)

update jlima.IC_BP set[DichoBP] = 1 where  [BPStatus] = 'Controlled blood pressure'
update jlima.IC_BP set[DichoBP] = 0 where  [BPStatus] = 'Uncontrolled blood pressure'

select * into jlima.merged_final from [dbo].[Demographics] Inner Join [jlima].[IC_BP]
on [contactid] = [ID]


select * from jlima.IC_BP


select * from [jlima].[merged_final]
SELECT DISTINCT [contactid] FROM jlima.merged_final;

alter table jlima.merged_final add date_diff numeric(3)

update jlima.merged_final set date_diff = DATEDIFF (week, try_convert(date, [tri_enrollmentcompletedate]), [ObservedTime]) 
from jlima.merged_final


select ID, DATEDIFF (week, try_convert(date, [tri_enrollmentcompletedate]), [ObservedTime]) 
from jlima.merged_final as Datediff

alter table jlima.merged_final add WeekNumber numeric (2)
update jlima.merged_final set WeekNumber = datepart (wk, ObservedTime)

alter table jlima.merged_final add Quarter numeric (1)
update jlima.merged_final set Quarter = datepart (quarter, ObservedTime)

select avg (DichoBP) from jlima.merged_final where Quarter = 1;
select avg (DichoBP) from jlima.merged_final where Quarter = 2;

select [contactid], MIN(ObservedTime), [DichoBP] from jlima.merged_final group by [contactid], [DichoBP]
select sum (DichoBP) from jlima.merged_final where Quarter = 1;
select sum (DichoBP) from jlima.merged_final where Quarter = 2 

-- Many people have their first measurement many weeks after they enroll that was I chose Observed instead of enroll time
-- Quarter = 12 weeks 

SELECT distinct DATEDIFF(week, try_convert(date, [tri_enrollmentcompletedate]), FirstObservedTime) 
as Date_Diff from jlima.merged_f;


select * from jlima.merged_f

select * from jlima.merged_final

alter table jlima.merged_final add First_Observation date

--select [contactid], min([ObservedTime]) as FirstObservedTime
-- group by [contactid] into jlima.t1 from jlima.merged_final


SELECT * INTO jlima.temp FROM (select [contactid], min(ObservedTime) as FirstObservedTime
from jlima.merged_final
group by [contactid]) as t1


select * from jlima.temp
EXEC sp_RENAME 'jlima.temp.contactid', 'ab', 'COLUMN'

SELECT * INTO jlima.merged_f FROM (select * from jlima.merged_final Inner Join 
jlima.temp on jlima.merged_final.contactid = jlima.temp.ab ) as t1


select * from jlima.merged_f


select * from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime])

 -- As per new instructions , 1 week at a time:
--- IMPORTANT BELOW, group by :

 select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime]) group by [contactid]

 select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,1,[FirstObservedTime])
    and dateadd (week, 2, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,2,[FirstObservedTime])
    and dateadd (week, 3, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,3,[FirstObservedTime])
    and dateadd (week, 4, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,4,[FirstObservedTime])
    and dateadd (week, 5, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,5,[FirstObservedTime])
    and dateadd (week, 6, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,6,[FirstObservedTime])
    and dateadd (week, 7, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,7,[FirstObservedTime])
    and dateadd (week, 8, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,8,[FirstObservedTime])
    and dateadd (week, 9, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,9,[FirstObservedTime])
    and dateadd (week, 10, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,10,[FirstObservedTime])
    and dateadd (week, 11, [FirstObservedTime]) group by [contactid]

select [contactid], AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week,11,[FirstObservedTime])
    and dateadd (week, 12, [FirstObservedTime]) group by [contactid]


 select * from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 12, [FirstObservedTime])

 select AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime])

 select AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week, 11, [FirstObservedTime]) and
 dateadd (week, 12, [FirstObservedTime])

 -- number of weeks from the moment of invitation varies a lot (email) thats why Observed Time
 
select SUM ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime])

 select count ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime])

 --961 total, 359 good = 37% good

 select SUM ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 12, [FirstObservedTime])

 select count ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week, 12, [FirstObservedTime]) and
 dateadd (week, 13, [FirstObservedTime])

 select SUM ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week, 12, [FirstObservedTime]) and
 dateadd (week, 13, [FirstObservedTime])

 -- 134 total, 55 good = 41% good

 select SUM ([DichoBP]) from jlima.merged_f where [ObservedTime] between [FirstObservedTime] and
 dateadd (week, 12, [FirstObservedTime])

 select [contactid], [DichoBP], [ObservedTime], [FirstObservedTime] from jlima.merged_f where [DichoBP] = 0 and ([ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime]))

 SELECT * INTO jlima.gotBetter FROM (select [contactid], [DichoBP], [ObservedTime], [FirstObservedTime] 
 from jlima.merged_f where [DichoBP] = 0 and ([ObservedTime] between [FirstObservedTime] and
 dateadd (week, 1, [FirstObservedTime]))) as t1

 select * from jlima.gotBetter


 SELECT * INTO jlima.gotBetter2 FROM (select [contactid], [DichoBP], [ObservedTime], [FirstObservedTime] 
 from jlima.merged_f where [DichoBP] = 1 and ([ObservedTime] between dateadd (week, 11, [FirstObservedTime]) and
 dateadd (week, 12, [FirstObservedTime]))) as t1

 select * from jlima.gotBetter2

 SELECT * FROM jlima.gotBetter2 INNER JOIN jlima.gotBetter ON jlima.gotBetter2.contactid = jlima.gotBetter.contactid

 EXEC sp_RENAME 'jlima.gotBetter2.contactid', 'ab', 'COLUMN'
 EXEC sp_RENAME 'jlima.gotBetter2.DichoBP', 'ba', 'COLUMN'
 EXEC sp_RENAME 'jlima.gotBetter2.ObservedTime', 'ab1', 'COLUMN'
 EXEC sp_RENAME 'jlima.gotBetter2.FirstObservedTime', 'ba1', 'COLUMN'

 SELECT * INTO jlima.gotBetter3 FROM (SELECT * FROM jlima.gotBetter2 INNER JOIN jlima.gotBetter ON
  jlima.gotBetter2.ab = jlima.gotBetter.contactid) as t1

  select * from jlima.gotBetter3
  
  select distinct contactid from jlima.gotBetter3
 
 -- 22 people remained and got better



 
 select AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week, 2, [FirstObservedTime]) and
 dateadd (week, 3, [FirstObservedTime])


 DECLARE @cnt INT = 1;

WHILE @cnt < 13
BEGIN
Print @cnt
   select AVG ([DichoBP]) as Weekly_Average from jlima.merged_f where [ObservedTime] between dateadd (week, @cnt-1, [FirstObservedTime]) and
 dateadd (week, @cnt, [FirstObservedTime]) 
   SET @cnt = @cnt + 1;
   
END;


--testing:
select AVG ([DichoBP]) from jlima.merged_f where [ObservedTime] between dateadd (week, 2, [FirstObservedTime]) and
 dateadd (week, 3, [FirstObservedTime])



 --select DISTINCT (SELECT * FROM jlima.gotBetter2 INNER JOIN 
 --jlima.gotBetter ON jlima.gotBetter2.ab = jlima.gotBetter.contactid)

/*SELECT
dateadd(minute, datediff(minute,0,sd.Date) / 5 * 5, 0) Interval
,AVG(sd.Value) AvgResult
FROM #SampleData sd
GROUP BY dateadd(minute, datediff(minute,0,sd.Date) / 5 * 5, 0)

SELECT
dateadd(week, datediff(week,0,[ObservedTime]) / 5 * 5, 0) Interval
,AVG([ObservedTime]) AvgResult
FROM jlima.merged_final
GROUP BY dateadd(week, datediff(minute,0,[ObservedTime]) / 5 * 5, 0)*/




--- Prob 2

select * into jlima.merged_final2 from Demographics Inner Join ChronicConditions
on [contactid] = [tri_patientid] join Text on [tri_patientid] = [tri_contactId]

select * from jlima.merged_final2

select [contactid], MAX([TextSentDate]), [gendercode] from jlima.merged_final2 group by [contactid], MAX([TextSentDate])


select [contactid], [gendercode],[tri_age],[parentcontactidname],[tri_imaginecareenrollmentstatus],
 [address1_stateorprovince], [tri_imaginecareenrollmentemailsentdate], [tri_enrollmentcompletedate],
 [test],[gh1],[gh2],[pf02], [gh3], [gh4], [gh5], [tri_patientid], [tri_name],
 [tri_contactId], [SenderName], MAX([TextSentDate]) as Most_Recent_Text from jlima.merged_final2 group by [contactid], [gendercode],[tri_age],
 [parentcontactidname], [tri_imaginecareenrollmentstatus], [address1_stateorprovince], 
 [tri_imaginecareenrollmentemailsentdate], [tri_enrollmentcompletedate], [test], [gh1],[gh2],[pf02], [gh3], [gh4], [gh5],
  [tri_patientid], [tri_name], [tri_contactId], [SenderName], [TextSentDate]


  WITH numbered AS
( SELECT [contactid], [TextSentDate], 
     ROW_NUMBER() OVER (PARTITION BY [contactid] ORDER BY [TextSentDate] DESC) AS rownum
  FROM jlima.merged_final2
)
SELECT [contactid], [TextSentDate]
FROM numbered
WHERE rownum = 1;


  