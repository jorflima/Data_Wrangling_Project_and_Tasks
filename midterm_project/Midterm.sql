select * from jlima.midterm

--dropping the first column [__] made unnecessary by the SEQN - Respondent sequence number variable 
alter table jlima.midterm drop column [__]  

-- renaming the columns
EXEC sp_RENAME '[jlima].[midterm].[_SEQN_]', 'Respondent Nr', 'COLUMN' 
EXEC sp_RENAME '[jlima].[midterm].[_DIQ010_]', 'Doctor told DB', 'COLUMN' 
EXEC sp_RENAME '[jlima].[midterm].[_DID040_]', 'Diagnosis Age', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ160_]', 'Risk Prediabetes', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ170_]', 'Told risk DB', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ172_]', 'Feel risk DB', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175A_]', 'Family history', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175B_]', 'Overweight', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175C_]', 'Age', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175D_]', 'Poor diet', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175E_]', 'Race', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175F_]', 'Had a baby >9 lbs', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175G_]', 'Lack physical activity', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175H_]', 'High blood pressure', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175I_]', 'High blood sugar', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175J_]', 'High cholesterol', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175K_]', 'Hypoglycemic', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175L_]', 'Extreme hunger', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175M_]', 'Tingling/numbness hands/feet', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175N_]', 'Blurred vision', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175O_]', 'Increased fatigue', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175P_]', 'Anyone could be at risk', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175Q_]', 'Doctor warning', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175R_]', 'Other, specify', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175S_]', 'Gestational diabetes', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175T_]', 'Frequent urination', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175U_]', 'Thirst', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175V_]', 'Craving sweet/lot of sugar', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175W_]', 'Medication', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ175X_]', 'Polycystic ovarian syndrome', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ180_]', 'Had blood tested past three years', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ050_]', 'Taking insulin now', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID060_]', 'How long taking insulin', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ060U_]', 'Insulin-Unit of measure (month/year)', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ070_]', 'DB pills to lower blood sugar', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ070_]', 'DB pills to lower blood sugar', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ230_]', 'How long ago saw a DB specialist', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ240_]', 'Is there one Dr you see for DB', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID250_]', 'Past year #times seen doctor', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID260_]', 'How often check blood for glucose/sugar', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ260U_]', 'Check Blood-Unit of measure (day/week/month/year)', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ275_]', 'Past year Dr checked for A1C', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ280_]', 'What was your last A1C level', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ291_]', 'What does Dr say A1C should be', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ300S_]', 'What was your recent SBP', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ300D_]', 'What was your recent DBP', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID310S_]', 'What does Dr say SBP should be', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID310D_]', 'What does Dr say DBP should be', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID320_]', 'What was most recent LDL nr', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID330_]', 'What Dr say LDL should be', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID341_]', 'Past year times Dr check feet for sores', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DID350_]', 'How often do you check your feet', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ350U_]', 'Check Feet-Unit of measure (day/week/month/year)', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ360_]', 'Last time pupils dilated exam', 'COLUMN'
EXEC sp_RENAME '[jlima].[midterm].[_DIQ080_]', 'DB affected eyes/retinopathy', 'COLUMN'

-- altering the type of variable where appropriate and making columsn accept NULL values

alter table jlima.midterm alter column [Doctor told DB] nvarchar (50) NULL -- changed from int to categorical variable 
alter table jlima.midterm alter column  [Taking insulin now] nvarchar (50) NULL -- changed from int to categorical variable 
alter table jlima.midterm alter column [Diagnosis Age] nvarchar (50) NULL
alter table jlima.midterm alter column [Risk Prediabetes] nvarchar (50) NULL
alter table jlima.midterm alter column [Told risk DB] nvarchar (50) NULL
alter table jlima.midterm alter column [Feel risk DB] nvarchar (50) NULL
alter table jlima.midterm alter column [Family history] nvarchar (50) NULL
alter table jlima.midterm alter column [Overweight] nvarchar (50) NULL
alter table jlima.midterm alter column [Age] nvarchar (50) NULL
alter table jlima.midterm alter column [Poor diet] nvarchar (50) NULL
alter table jlima.midterm alter column [Race] nvarchar (50) NULL
alter table jlima.midterm alter column [Had a baby >9 lbs] nvarchar (50) NULL
alter table jlima.midterm alter column [Lack physical activity] nvarchar (50) NULL
alter table jlima.midterm alter column [High blood pressure] nvarchar (50) NULL
alter table jlima.midterm alter column [High blood sugar] nvarchar (50) NULL
alter table jlima.midterm alter column [High cholesterol] nvarchar (50) NULL
alter table jlima.midterm alter column [Hypoglycemic] nvarchar (50) NULL
alter table jlima.midterm alter column [Extreme hunger] nvarchar (50) NULL
alter table jlima.midterm alter column [Tingling/numbness hands/feet] nvarchar (50) NULL
alter table jlima.midterm alter column [Blurred vision] nvarchar (50) NULL
alter table jlima.midterm alter column [Increased fatigue] nvarchar (50) NULL
alter table jlima.midterm alter column [Anyone could be at risk] nvarchar (50) NULL
alter table jlima.midterm alter column [Doctor warning] nvarchar (50) NULL
alter table jlima.midterm alter column [Other, specify] nvarchar (50) NULL
alter table jlima.midterm alter column [Gestational diabetes] nvarchar (50) NULL
alter table jlima.midterm alter column [Frequent urination] nvarchar (50) NULL
alter table jlima.midterm alter column [Thirst] nvarchar (50) NULL
alter table jlima.midterm alter column [Craving sweet/lot of sugar] nvarchar (50) NULL
alter table jlima.midterm alter column [Medication] nvarchar (50) NULL
alter table jlima.midterm alter column [Polycystic ovarian syndrome] nvarchar (50) NULL
alter table jlima.midterm alter column [Had blood tested past three years] nvarchar (50) NULL
alter table jlima.midterm alter column [How long taking insulin] nvarchar (50) NULL
alter table jlima.midterm alter column [Insulin-Unit of measure (month/year)] nvarchar (50) NULL
alter table jlima.midterm alter column [DB pills to lower blood sugar] nvarchar (50) NULL
alter table jlima.midterm alter column [How long ago saw a DB specialist] nvarchar (50) NULL
alter table jlima.midterm alter column [Is there one Dr you see for DB] nvarchar (50) NULL
alter table jlima.midterm alter column [Past year #times seen doctor] nvarchar (50) NULL
alter table jlima.midterm alter column [How often check blood for glucose/sugar] nvarchar (50) NULL
alter table jlima.midterm alter column [Check Blood-Unit of measure (day/week/month/year)] nvarchar (50) NULL
alter table jlima.midterm alter column [Past year Dr checked for A1C] nvarchar (50) NULL
alter table jlima.midterm alter column [What was your last A1C level] nvarchar (50) NULL
alter table jlima.midterm alter column [What does Dr say A1C should be] nvarchar (50) NULL
alter table jlima.midterm alter column [What was your recent SBP] nvarchar (50) NULL
alter table jlima.midterm alter column [What was your recent DBP] nvarchar (50) NULL
alter table jlima.midterm alter column [What does Dr say SBP should be] nvarchar (50) NULL
alter table jlima.midterm alter column [What does Dr say DBP should be] nvarchar (50) NULL
alter table jlima.midterm alter column [What was most recent LDL nr] nvarchar (50) NULL
alter table jlima.midterm alter column [What Dr say LDL should be] nvarchar (50) NULL
alter table jlima.midterm alter column [Past year times Dr check feet for sores] nvarchar (50) NULL
alter table jlima.midterm alter column [How often do you check your feet] nvarchar (50) NULL
alter table jlima.midterm alter column [Check Feet-Unit of measure (day/week/month/year)] nvarchar (50) NULL
alter table jlima.midterm alter column [Last time pupils dilated exam] nvarchar (50) NULL
alter table jlima.midterm alter column [DB affected eyes/retinopathy] nvarchar (50) NULL


-- Making all 'NA' become NULL values

update jlima.midterm set [Doctor told DB] = null where [Doctor told DB] = 'NA'
update jlima.midterm set [Diagnosis Age]= null where [Diagnosis Age] = 'NA'
update jlima.midterm set [Risk Prediabetes]= null where [Risk Prediabetes] = 'NA'
update jlima.midterm set [Told risk DB]= null where [Told risk DB] = 'NA'
update jlima.midterm set [Feel risk DB]= null where [Feel risk DB] = 'NA'
update jlima.midterm set [Family history]= null where [Family history] = 'NA'
update jlima.midterm set [Overweight]= null where [Overweight] = 'NA'
update jlima.midterm set [Age]= null where [Age] = 'NA'
update jlima.midterm set [Poor diet]= null where [Poor diet] = 'NA'
update jlima.midterm set [Race]= null where [Race] = 'NA'
update jlima.midterm set [Had a baby >9 lbs]= null where [Had a baby >9 lbs] = 'NA'
update jlima.midterm set [Lack physical activity]= null where [Lack physical activity] = 'NA'
update jlima.midterm set [High blood pressure]= null where [High blood pressure] = 'NA'
update jlima.midterm set [High blood sugar]= null where [High blood sugar] = 'NA'
update jlima.midterm set [High cholesterol]= null where [High cholesterol] = 'NA'
update jlima.midterm set [Hypoglycemic]= null where [Hypoglycemic] = 'NA'
update jlima.midterm set [Extreme hunger]= null where [Extreme hunger] = 'NA'
update jlima.midterm set [Tingling/numbness hands/feet]= null where [Tingling/numbness hands/feet] = 'NA'
update jlima.midterm set [Blurred vision]= null where [Blurred vision] = 'NA'
update jlima.midterm set [Increased fatigue]= null where [Increased fatigue] = 'NA'
update jlima.midterm set [Anyone could be at risk]= null where [Anyone could be at risk] = 'NA'
update jlima.midterm set [Doctor warning]= null where [Doctor warning] = 'NA'
update jlima.midterm set [Other, specify]= null where [Other, specify] = 'NA'
update jlima.midterm set [Gestational diabetes]= null where [Gestational diabetes] = 'NA'
update jlima.midterm set [Frequent urination]= null where [Frequent urination] = 'NA'
update jlima.midterm set [Thirst]= null where [Thirst] = 'NA'
update jlima.midterm set [Craving sweet/lot of sugar]= null where [Craving sweet/lot of sugar] = 'NA'
update jlima.midterm set [Medication]= null where [Medication] = 'NA'
update jlima.midterm set [Polycystic ovarian syndrome]= null where [Polycystic ovarian syndrome] = 'NA'
update jlima.midterm set [Had blood tested past three years]= null where [Had blood tested past three years] = 'NA'
update jlima.midterm set [Taking insulin now]= null where [Taking insulin now] = 'NA'
update jlima.midterm set [How long taking insulin]= null where [How long taking insulin] = 'NA'
update jlima.midterm set [Insulin-Unit of measure (month/year)]= null where [Insulin-Unit of measure (month/year)] = 'NA'
update jlima.midterm set [DB pills to lower blood sugar]= null where [DB pills to lower blood sugar] = 'NA'
update jlima.midterm set [How long ago saw a DB specialist]= null where [How long ago saw a DB specialist] = 'NA'
update jlima.midterm set [Is there one Dr you see for DB]= null where [Is there one Dr you see for DB] = 'NA'
update jlima.midterm set [Past year #times seen doctor]= null where [Past year #times seen doctor] = 'NA'
update jlima.midterm set [How often check blood for glucose/sugar]= null where [How often check blood for glucose/sugar] = 'NA'
update jlima.midterm set [Check Blood-Unit of measure (day/week/month/year)]= null where [Check Blood-Unit of measure (day/week/month/year)] = 'NA'
update jlima.midterm set [Past year Dr checked for A1C]= null where [Past year Dr checked for A1C] = 'NA'
update jlima.midterm set [What was your last A1C level]= null where [What was your last A1C level] = 'NA'
update jlima.midterm set [What does Dr say A1C should be]= null where [What does Dr say A1C should be] = 'NA'
update jlima.midterm set [What was your recent SBP]= null where [What was your recent SBP] = 'NA'
update jlima.midterm set [What was your recent DBP]= null where [What was your recent DBP] = 'NA'
update jlima.midterm set [What does Dr say SBP should be]= null where [What does Dr say SBP should be] = 'NA'
update jlima.midterm set [What does Dr say DBP should be]= null where [What does Dr say DBP should be] = 'NA'
update jlima.midterm set [What was most recent LDL nr]= null where [What was most recent LDL nr] = 'NA'
update jlima.midterm set [What Dr say LDL should be]= null where [What Dr say LDL should be] = 'NA'
update jlima.midterm set [Past year times Dr check feet for sores]= null where [Past year times Dr check feet for sores] = 'NA'
update jlima.midterm set [How often do you check your feet]= null where [How often do you check your feet] = 'NA'
update jlima.midterm set [Check Feet-Unit of measure (day/week/month/year)]= null where [Check Feet-Unit of measure (day/week/month/year)] = 'NA'
update jlima.midterm set [Last time pupils dilated exam]= null where [Last time pupils dilated exam] = 'NA'
update jlima.midterm set [DB affected eyes/retinopathy]= null where [DB affected eyes/retinopathy] = 'NA'



-- making substitutions in the data for the categorical values when appopriate and counting to check if values are correct

update jlima.midterm set [Doctor told DB]  = 'Yes' where [Doctor told DB] = '1'
update jlima.midterm set [Doctor told DB]  = 'No' where [Doctor told DB] = '2'
update jlima.midterm set [Doctor told DB]  = 'Boderline' where [Doctor told DB] = '3'
update jlima.midterm set [Doctor told DB]  = 'Refused' where [Doctor told DB] = '7'
update jlima.midterm set [Doctor told DB]  = 'Dont Know' where [Doctor told DB] = '9'
select [Doctor told DB], count (*) from jlima.midterm group by [Doctor told DB] -- matches data


-- will not categorize the Diagnosis Age because it is a continuous variable, will just display the count
select count (*) FROM jlima.midterm WHERE [Diagnosis Age] >= 2 and [Diagnosis Age] <= 78 -- matches data
select count (*) FROM jlima.midterm WHERE [Diagnosis Age] = 80 -- matches data
select count (*) FROM jlima.midterm WHERE [Diagnosis Age] = 666 -- matches data
select count (*) FROM jlima.midterm WHERE [Diagnosis Age] = 777 -- matches data
select count (*) FROM jlima.midterm WHERE [Diagnosis Age] = 999 -- matches data

-- making substitutions in the data for the categorical values when appopriate and counting to check if values are correct

update jlima.midterm set [Risk Prediabetes]  = 'Yes' where [Risk Prediabetes] = '1'
update jlima.midterm set [Risk Prediabetes]  = 'No' where [Risk Prediabetes] = '2'
update jlima.midterm set [Risk Prediabetes]  = 'Refused' where [Risk Prediabetes] = '7'
update jlima.midterm set [Risk Prediabetes]  = 'Dont Know' where [Risk Prediabetes] = '9'
select [Risk Prediabetes], count (*) from jlima.midterm group by [Risk Prediabetes] -- matches the data


update jlima.midterm set [Told risk DB]  = 'Yes' where [Told risk DB] = '1'
update jlima.midterm set [Told risk DB]  = 'No' where [Told risk DB] = '2'
update jlima.midterm set [Told risk DB]  = 'Refused' where [Told risk DB] = '7'
update jlima.midterm set [Told risk DB]  = 'Dont Know' where [Told risk DB] = '9'
select [Told risk DB], count (*) from jlima.midterm group by [Told risk DB] -- matches the data


update jlima.midterm set [Feel risk DB]  = 'Yes' where [Feel risk DB] = '1'
update jlima.midterm set [Feel risk DB]  = 'No' where [Feel risk DB] = '2'
update jlima.midterm set [Feel risk DB]  = 'Refused' where [Feel risk DB] = '7'
update jlima.midterm set [Feel risk DB]  = 'Dont Know' where [Feel risk DB] = '9'
select [Feel risk DB], count (*) from jlima.midterm group by [Feel risk DB] -- matches data


update jlima.midterm set [Family history]  = 'Family history' where [Family history] = '10'
update jlima.midterm set [Family history]  = 'Refused' where [Family history] = '77'
update jlima.midterm set [Family history]  = 'Dont Know' where [Family history] = '99'
select [Family history], count (*) from jlima.midterm group by [Family history] -- matches data


update jlima.midterm set [Overweight]  = 'Overweight' where [Overweight] = '11'
select [Overweight], count (*) from jlima.midterm group by [Overweight] -- matches data


update jlima.midterm set [Age]  = 'Age' where [Age] = '12'
select [Age], count (*) from jlima.midterm group by [Age] -- matches data


update jlima.midterm set [Poor diet]  = 'Poor Diet' where [Poor diet] = '13'
select [Poor diet], count (*) from jlima.midterm group by [Poor diet] -- matches data

update jlima.midterm set [Race] = 'Race' where [Race] = '14'
select [Race], count (*) from jlima.midterm group by [Race] -- matches data


update jlima.midterm set [Had a baby >9 lbs] = 'Had a baby weighed over 9 lbs. at birth' where [Had a baby >9 lbs] = '15'
select [Had a baby >9 lbs], count (*) from jlima.midterm group by [Had a baby >9 lbs] -- matches data


update jlima.midterm set [Lack physical activity] = 'Lack of physical activity' where [Lack physical activity] = '16'
select [Lack physical activity], count (*) from jlima.midterm group by [Lack physical activity] -- matches data


update jlima.midterm set [High blood pressure] = 'High blood pressure' where [High blood pressure] = '17'
select [High blood pressure], count (*) from jlima.midterm group by [High blood pressure] -- matches data


update jlima.midterm set [High blood sugar] = 'High blood sugar' where [High blood sugar] = '18'
select [High blood sugar], count (*) from jlima.midterm group by [High blood sugar] -- matches data


update jlima.midterm set [High cholesterol] = 'High cholesterol' where [High cholesterol] = '19'
select [High cholesterol], count (*) from jlima.midterm group by [High cholesterol] -- matches data


update jlima.midterm set [Hypoglycemic] = 'Hypoglycemic' where [Hypoglycemic] = '20'
select [Hypoglycemic], count (*) from jlima.midterm group by [Hypoglycemic] -- matches data


update jlima.midterm set [Extreme hunger] = 'Extreme hunger' where [Extreme hunger] = '21'
select [Extreme hunger], count (*) from jlima.midterm group by [Extreme hunger] -- matches data


update jlima.midterm set [Tingling/numbness hands/feet] = 'Tingling/numbness hands/feet' where [Tingling/numbness hands/feet] = '22'
select [Tingling/numbness hands/feet], count (*) from jlima.midterm group by [Tingling/numbness hands/feet] -- matches data


update jlima.midterm set [Blurred vision] = 'Blurred vision' where [Blurred vision] = '23'
select [Blurred vision], count (*) from jlima.midterm group by [Blurred vision] -- matches data


update jlima.midterm set [Increased fatigue] = 'Increased fatigue' where [Increased fatigue] = '24'
select [Increased fatigue], count (*) from jlima.midterm group by [Increased fatigue] -- matches data


update jlima.midterm set [Anyone could be at risk] = 'Anyone could be at risk' where [Anyone could be at risk] = '25'
select [Anyone could be at risk], count (*) from jlima.midterm group by [Anyone could be at risk] -- matches data


update jlima.midterm set [Doctor warning] = '[Doctor warning]' where [Doctor warning] = '26'
select [Doctor warning], count (*) from jlima.midterm group by [Doctor warning] -- matches data


update jlima.midterm set [Other, specify] = 'Other, specify' where [Other, specify] = '27'
select [Other, specify], count (*) from jlima.midterm group by [Other, specify] -- matches data


update jlima.midterm set [Gestational diabetes] = 'Gestational diabetes' where [Gestational diabetes]  = '28'
select [Gestational diabetes], count (*) from jlima.midterm group by [Gestational diabetes] -- matches data


update jlima.midterm set [Frequent urination] = 'Frequent urination' where [Frequent urination]  = '29'
select [Frequent urination], count (*) from jlima.midterm group by [Frequent urination] -- matches data


update jlima.midterm set [Thirst] = 'Thirst' where [Thirst]  = '30'
select [Thirst], count (*) from jlima.midterm group by [Thirst] -- matches data


update jlima.midterm set [Craving sweet/lot of sugar] = 'Craving sweet/lot of sugar' where [Craving sweet/lot of sugar]  = '31'
select [Craving sweet/lot of sugar], count (*) from jlima.midterm group by [Craving sweet/lot of sugar] -- matches data


update jlima.midterm set [Medication] = 'Medication' where [Medication]  = '32'
select [Medication], count (*) from jlima.midterm group by [Medication] -- matches data

update jlima.midterm set [Polycystic ovarian syndrome] = 'Polycystic ovarian syndrome' where [Polycystic ovarian syndrome]  = '33'
select [Polycystic ovarian syndrome], count (*) from jlima.midterm group by [Polycystic ovarian syndrome] -- matches data


update jlima.midterm set [Had blood tested past three years] = 'Yes' where [Had blood tested past three years]  = '1'
update jlima.midterm set [Had blood tested past three years] = 'No' where [Had blood tested past three years]  = '2'
update jlima.midterm set [Had blood tested past three years] = 'Refused' where [Had blood tested past three years]  = '7'
update jlima.midterm set [Had blood tested past three years] = 'Dont know' where [Had blood tested past three years]  = '9'
select [Had blood tested past three years], count (*) from jlima.midterm group by [Had blood tested past three years] -- matches data


update jlima.midterm set [Taking insulin now] = 'Yes' where [Taking insulin now]  = '1'
update jlima.midterm set [Taking insulin now] = 'No' where [Taking insulin now]  = '2'
update jlima.midterm set [Taking insulin now] = 'Refused' where [Taking insulin now]  = '7'
update jlima.midterm set [Taking insulin now] = 'dont know' where [Taking insulin now]  = '9'
select [Taking insulin now], count (*) from jlima.midterm group by [Taking insulin now] -- matches data


-- will not categorize How long taking insulin because it is a continuous variable, will just display the count
select count (*) FROM jlima.midterm WHERE [How long taking insulin] >= 1 and [How long taking insulin] <= 55
select count (*) FROM jlima.midterm WHERE [How long taking insulin] = 666 -- matches data
select count (*) FROM jlima.midterm WHERE [How long taking insulin] = 777 -- matches data
select count (*) FROM jlima.midterm WHERE [How long taking insulin] = 999 -- matches data



update jlima.midterm set [Insulin-Unit of measure (month/year)] = 'Months' where [Insulin-Unit of measure (month/year)] = '1'
update jlima.midterm set [Insulin-Unit of measure (month/year)] = 'Years' where [Insulin-Unit of measure (month/year)] = '2'
select [Insulin-Unit of measure (month/year)], count (*) from jlima.midterm group by [Insulin-Unit of measure (month/year)] -- matches data


update jlima.midterm set [DB pills to lower blood sugar] = 'Yes' where [DB pills to lower blood sugar] = '1'
update jlima.midterm set [DB pills to lower blood sugar] = 'No' where [DB pills to lower blood sugar] = '2'
update jlima.midterm set [DB pills to lower blood sugar] = 'Refused' where [DB pills to lower blood sugar] = '7'
update jlima.midterm set [DB pills to lower blood sugar] = 'Dont Know' where [DB pills to lower blood sugar] = '9'
select [DB pills to lower blood sugar], count (*) from jlima.midterm group by [DB pills to lower blood sugar] -- matches data


update jlima.midterm set [How long ago saw a DB specialist] = '1 year ago or less' where [How long ago saw a DB specialist] = '1'
update jlima.midterm set [How long ago saw a DB specialist] = 'More than 1 year ago but no more than 2 years ago' where [How long ago saw a DB specialist] = '2'
update jlima.midterm set [How long ago saw a DB specialist] = 'More than 2 years ago but no more than 5 years ago' where [How long ago saw a DB specialist] = '3'
update jlima.midterm set [How long ago saw a DB specialist] = 'More than 5 years ago' where [How long ago saw a DB specialist] = '4'
update jlima.midterm set [How long ago saw a DB specialist] = 'Never' where [How long ago saw a DB specialist] = '5'
update jlima.midterm set [How long ago saw a DB specialist] = 'Refused' where [How long ago saw a DB specialist] = '7'
update jlima.midterm set [How long ago saw a DB specialist] = 'Dont Know' where [How long ago saw a DB specialist] = '9'
select [How long ago saw a DB specialist], count (*) from jlima.midterm group by [How long ago saw a DB specialist] -- matches data


update jlima.midterm set [Is there one Dr you see for DB] = 'Yes' where [Is there one Dr you see for DB] = '1'
update jlima.midterm set [Is there one Dr you see for DB] = 'No' where [Is there one Dr you see for DB] = '2'
update jlima.midterm set [Is there one Dr you see for DB] = 'Refused' where [Is there one Dr you see for DB] = '7'
update jlima.midterm set [Is there one Dr you see for DB] = 'Dont Know' where [Is there one Dr you see for DB] = '9'
select [Is there one Dr you see for DB], count (*) from jlima.midterm group by [Is there one Dr you see for DB] -- matches data


-- will not categorize Past year #times seen doctor because it is a continuous variable, will just display the count
select count (*) FROM jlima.midterm WHERE [Past year #times seen doctor] >= 1 and [Past year #times seen doctor] <= 60 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year #times seen doctor] = 0 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year #times seen doctor] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year #times seen doctor] = 9999 -- matches data


-- will not categorize How often check blood for glucose/sugar because it is a continuous variable, will just display the count
select count (*) FROM jlima.midterm WHERE [How often check blood for glucose/sugar] >= 1 and [How often check blood for glucose/sugar] <= 15 -- matches data
select count (*) FROM jlima.midterm WHERE [How often check blood for glucose/sugar] = 0 -- matches data
select count (*) FROM jlima.midterm WHERE [How often check blood for glucose/sugar] = 777 -- matches data
select count (*) FROM jlima.midterm WHERE [How often check blood for glucose/sugar] = 999 -- matches data



update jlima.midterm set [Check Blood-Unit of measure (day/week/month/year)] = 'Per day' where [Check Blood-Unit of measure (day/week/month/year)] = '1'
update jlima.midterm set [Check Blood-Unit of measure (day/week/month/year)] = 'Per week' where [Check Blood-Unit of measure (day/week/month/year)] = '2'
update jlima.midterm set [Check Blood-Unit of measure (day/week/month/year)] = 'Per month' where [Check Blood-Unit of measure (day/week/month/year)] = '3'
update jlima.midterm set [Check Blood-Unit of measure (day/week/month/year)] = 'Per year' where [Check Blood-Unit of measure (day/week/month/year)] = '4'
select [Check Blood-Unit of measure (day/week/month/year)], count (*) from jlima.midterm group by [Check Blood-Unit of measure (day/week/month/year)] -- matches data


update jlima.midterm set [Past year Dr checked for A1C] = 'Yes' where [Past year Dr checked for A1C] = '1'
update jlima.midterm set [Past year Dr checked for A1C] = 'No' where [Past year Dr checked for A1C] = '2'
update jlima.midterm set [Past year Dr checked for A1C] = 'Refused' where [Past year Dr checked for A1C] = '7'
update jlima.midterm set [Past year Dr checked for A1C] = 'Dont know' where [Past year Dr checked for A1C] = '9'
select [Past year Dr checked for A1C], count (*) from jlima.midterm group by [Past year Dr checked for A1C] -- matches data

-- will not categorize What was your last A1C level because it is a continuous variable, will just display the count
select count (*) FROM jlima.midterm WHERE cast ([What was your last A1C level] as float) >=2 and cast ([What was your last A1C level] as float) <= 18.5 -- matches data
select count (*) FROM jlima.midterm WHERE cast ([What was your last A1C level] as float)  = 777 -- matches data
select count (*) FROM jlima.midterm WHERE cast ([What was your last A1C level] as float) = 999 -- matches data


update jlima.midterm set [What does Dr say A1C should be] = 'Less than 6' where [What does Dr say A1C should be] = '1'
update jlima.midterm set [What does Dr say A1C should be] = 'Less than 7' where [What does Dr say A1C should be] = '2'
update jlima.midterm set [What does Dr say A1C should be] = 'Less than 8' where [What does Dr say A1C should be] = '3'
update jlima.midterm set [What does Dr say A1C should be] = 'Less than 9' where [What does Dr say A1C should be] = '4'
update jlima.midterm set [What does Dr say A1C should be] = 'Less than 10' where [What does Dr say A1C should be] = '5'
update jlima.midterm set [What does Dr say A1C should be] = 'Provider did not specify goal' where [What does Dr say A1C should be] = '6'
update jlima.midterm set [What does Dr say A1C should be] = 'Refused' where [What does Dr say A1C should be] = '77'
update jlima.midterm set [What does Dr say A1C should be] = 'Dont Know' where [What does Dr say A1C should be] = '99'
select [What does Dr say A1C should be], count (*) from jlima.midterm group by [What does Dr say A1C should be] -- matches data

-- will not categorize What was your recent SBP because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What was your recent SBP] >= 80 and [What was your recent SBP] <= 281 -- matches data
select count (*) FROM jlima.midterm WHERE [What was your recent SBP] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What was your recent SBP] = 9999 -- matches data

-- will not categorize What was your recent DBP because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What was your recent DBP] >= 17 and [What was your recent DBP] <= 251 -- matches data
select count (*) FROM jlima.midterm WHERE [What was your recent DBP] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What was your recent DBP] = 9999 -- matches data

-- will not categorize What does Dr say SBP should be because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What does Dr say SBP should be] >= 80 and [What does Dr say SBP should be] <= 175 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say SBP should be] = 6666 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say SBP should be] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say SBP should be] = 9999 -- matches data

-- will not categorize What does Dr say DBP should be because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What does Dr say DBP should be] >= 18 and [What does Dr say DBP should be] <= 140 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say DBP should be] = 6666 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say DBP should be] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What does Dr say DBP should be] = 9999 -- matches data


-- will not categorize What was most recent LDL nr because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What was most recent LDL nr] >= 4 and [What was most recent LDL nr] <= 520 -- matches data
select count (*) FROM jlima.midterm WHERE [What was most recent LDL nr] = 5555 -- matches data
select count (*) FROM jlima.midterm WHERE [What was most recent LDL nr] = 6666 -- matches data
select count (*) FROM jlima.midterm WHERE [What was most recent LDL nr] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What was most recent LDL nr] = 9999 -- matches data

-- will not categorize What Dr say LDL should be because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [What Dr say LDL should be] >= 6 and [What Dr say LDL should be] <= 205 -- matches data
select count (*) FROM jlima.midterm WHERE [What Dr say LDL should be] = 6666 -- matches data
select count (*) FROM jlima.midterm WHERE [What Dr say LDL should be] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [What Dr say LDL should be] = 9999 -- matches data
select [What Dr say LDL should be], count (*) from jlima.midterm group by [What Dr say LDL should be] -- matches data

-- will not categorize Past year times Dr check feet for sores because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [Past year times Dr check feet for sores] >= 1 and [Past year times Dr check feet for sores] <= 34 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year times Dr check feet for sores] = 0 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year times Dr check feet for sores] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [Past year times Dr check feet for sores] = 9999 -- matches data

-- will not categorize How often do you check your feet because it is a continuous variable, will just display the count

select count (*) FROM jlima.midterm WHERE [How often do you check your feet] >= 1 and [How often do you check your feet] <= 20 -- matches data
select count (*) FROM jlima.midterm WHERE [How often do you check your feet] = 0 -- matches data
select count (*) FROM jlima.midterm WHERE [How often do you check your feet] = 7777 -- matches data
select count (*) FROM jlima.midterm WHERE [How often do you check your feet] = 9999 -- matches data



update jlima.midterm set [Check Feet-Unit of measure (day/week/month/year)] = 'Per day' where [Check Feet-Unit of measure (day/week/month/year)] = '1'
update jlima.midterm set [Check Feet-Unit of measure (day/week/month/year)] = 'Per week' where [Check Feet-Unit of measure (day/week/month/year)] = '2'
update jlima.midterm set [Check Feet-Unit of measure (day/week/month/year)] = 'Per month' where [Check Feet-Unit of measure (day/week/month/year)] = '3'
update jlima.midterm set [Check Feet-Unit of measure (day/week/month/year)] = 'Per year' where [Check Feet-Unit of measure (day/week/month/year)] = '4'
select [Check Feet-Unit of measure (day/week/month/year)], count (*) from jlima.midterm group by [Check Feet-Unit of measure (day/week/month/year)] -- matches data



update jlima.midterm set [Last time pupils dilated exam] = 'Less than 1 month' where [Last time pupils dilated exam] = '1'
update jlima.midterm set [Last time pupils dilated exam] = '1-12 months' where [Last time pupils dilated exam] = '2'
update jlima.midterm set [Last time pupils dilated exam] = '13-24 months' where [Last time pupils dilated exam] = '3'
update jlima.midterm set [Last time pupils dilated exam] = 'Greater than 2 years' where [Last time pupils dilated exam] = '4'
update jlima.midterm set [Last time pupils dilated exam] = 'Never' where [Last time pupils dilated exam] = '5'
update jlima.midterm set [Last time pupils dilated exam] = 'Refused' where [Last time pupils dilated exam] = '7'
update jlima.midterm set [Last time pupils dilated exam] = 'Dont know' where [Last time pupils dilated exam] = '9'
select [Last time pupils dilated exam], count (*) from jlima.midterm group by [Last time pupils dilated exam] -- matches data

update jlima.midterm set [DB affected eyes/retinopathy] = 'Yes' where [DB affected eyes/retinopathy] = '1'
update jlima.midterm set [DB affected eyes/retinopathy] = 'No' where [DB affected eyes/retinopathy] = '2'
update jlima.midterm set [DB affected eyes/retinopathy] = 'Refused' where [DB affected eyes/retinopathy] = '7'
update jlima.midterm set [DB affected eyes/retinopathy] = 'Dont know' where [DB affected eyes/retinopathy] = '9'
select [DB affected eyes/retinopathy], count (*) from jlima.midterm group by [DB affected eyes/retinopathy] -- matches data
