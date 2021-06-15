CREATE TABLE [dbo].[reserve] (
    [reserve_id]         INT           NOT NULL,
    [reserve_doc_id]     NVARCHAR (10) NOT NULL,
    [reserve_patient_id] NVARCHAR (10) NOT NULL,
    [reserve_time]       NVARCHAR (15) NOT NULL,
    [state]              NVARCHAR (3)  NOT NULL,
    [number]             INT           NOT NULL,
    [branch]             NVARCHAR (2)  NOT NULL,
    PRIMARY KEY CLUSTERED ([reserve_id] ASC)
);

