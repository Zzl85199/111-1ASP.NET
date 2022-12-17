CREATE TABLE [dbo].[Students] (
    [sid]      CHAR (4)     NOT NULL,
    [name]     VARCHAR (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL,
    [major]    VARCHAR (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL,
    [tel]      VARCHAR (15) NULL,
    [birthday] DATETIME     NULL,
    [rent]     MONEY        NULL,
    PRIMARY KEY CLUSTERED ([sid] ASC)
);

INSERT INTO [dbo].[Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (N'S001', N'���|�w', N'��ިt', N'02-22222222', N'1967-09-03 00:00:00', 5000)
INSERT INTO [dbo].[Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (N'S002', N'���p��', N'��T�t', N'03-33333333', N'1978-02-02 00:00:00', 6500)
INSERT INTO [dbo].[Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (N'S003', N'�i�T��', N'�q�l�t', N'04-44444444', N'1982-03-03 00:00:00', 7000)
INSERT INTO [dbo].[Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (N'S004', N'���|��', N'��ިt', N'05-55555555', N'1981-04-04 00:00:00', 6500)
INSERT INTO [dbo].[Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (N'S005', N'������', N'�q�l�t', N'02-22222222', N'1966-09-03 00:00:00', 8000)
