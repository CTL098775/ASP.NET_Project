CREATE TABLE [dbo].[patient] (
    [Patient_id]           INT            NOT NULL,
    [Patient_num]          NVARCHAR (11)  NOT NULL,
    [Patient_name]         NVARCHAR (4)   NOT NULL,
    [Patient_birthday]     NVARCHAR (15)  NOT NULL,
    [Patient_address]      NVARCHAR (100) NOT NULL,
    [Patient_phone]        NVARCHAR (10)  NOT NULL,
    [Patient_disease]      NVARCHAR (1)   NOT NULL,
    [Patient_allergy]      NVARCHAR (1)   NOT NULL,
    [Patient_person]       NVARCHAR (4)   NOT NULL,
    [Patient_person_phone] NVARCHAR (10)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Patient_id] ASC)
);

