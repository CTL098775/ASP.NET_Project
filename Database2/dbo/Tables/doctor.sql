CREATE TABLE [dbo].[doctor] (
    [doc_id]   INT           NOT NULL,
    [doc_name] NVARCHAR (5)  NOT NULL,
    [doc_psd]  NVARCHAR (12) NOT NULL,
    PRIMARY KEY CLUSTERED ([doc_id] ASC)
);

