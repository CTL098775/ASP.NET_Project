CREATE TABLE [dbo].[diagnosis]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[patient_id] varchar(11) NOT NULL,
	[doc_id]  varchar(10) NOT NULL,
	[Diagnosticrecords]  text NOT NULL,
	[Prescriptionsign]  text NOT NULL,
	[num] int NOT NULL
)
