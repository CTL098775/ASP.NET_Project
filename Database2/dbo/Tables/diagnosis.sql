CREATE TABLE [dbo].[diagnosis] (
    [patient_id]        NVARCHAR (11) NOT NULL,
    [doc_id]            NVARCHAR (10) NOT NULL,
    [Diagnosticrecords] NVARCHAR (1)  NOT NULL,
    [Prescriptionsign]  NVARCHAR (1)  NOT NULL,
    [num]               INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([patient_id] ASC)
);

