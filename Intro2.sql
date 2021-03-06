CREATE TABLE [dbo].[Book] (
    [BookID] [int] NOT NULL,
    [Book_Name] [varchar](20),
    CONSTRAINT [PK_dbo.Book] PRIMARY KEY ([BookID])
)
CREATE TABLE [dbo].[Member] (
    [MemberID] [int] NOT NULL,
    [Member_Name] [varchar](20) NOT NULL,
    CONSTRAINT [PK_dbo.Member] PRIMARY KEY ([MemberID])
)
CREATE TABLE [dbo].[Review] (
    [ReviewID] [int] NOT NULL,
    [BookID] [int] NOT NULL,
    [MemberID] [int] NOT NULL,
    [Review_Text] [varchar](50),
    CONSTRAINT [PK_dbo.Review] PRIMARY KEY ([ReviewID])
)
CREATE INDEX [IX_BookID] ON [dbo].[Review]([BookID])
CREATE INDEX [IX_MemberID] ON [dbo].[Review]([MemberID])
ALTER TABLE [dbo].[Review] ADD CONSTRAINT [FK_dbo.Review_dbo.Book_BookID] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Book] ([BookID]) ON DELETE CASCADE
ALTER TABLE [dbo].[Review] ADD CONSTRAINT [FK_dbo.Review_dbo.Member_MemberID] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Member] ([MemberID]) ON DELETE CASCADE
CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId] [nvarchar](150) NOT NULL,
    [ContextKey] [nvarchar](300) NOT NULL,
    [Model] [varbinary](max) NOT NULL,
    [ProductVersion] [nvarchar](32) NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY ([MigrationId], [ContextKey])
)
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'202107051308590_01_bookMigration', N'EFCodeFirstAssignment.Migrations.Configuration',  0x1F8B0800000000000400DD5ADB6EDB3618BE1FB077107439A45192A2C016D82D522719823507C469B1BB80917E3B44294A13A9CCC6B027DBC51E69AFB09FA28EA464CBB29B64436E6292FFF940FE9FFDCF5F7F8F3E2C42E63C412268C4C7EEE1FE81EB00F7A380F2F9D84DE5ECCD8FEE87F7DF7F373A0BC285F3A538F7569D434A2EC6EEA394F1B1E709FF114222F643EA2791886672DF8F428F0491777470F0937778E801B2709197E38C6E532E6908D907FC3889B80FB14C09BB8C0260225FC79D69C6D5B922218898F83076CFCE2778E69C26429E0841E73C042E5DE7845182CA4C81CD5C87701E492251D5E3CF02A63289F87C1AE3026177CB18F0DC8C3001B909C7D5F1BED61C1C296BBC8AB060E5A74246E1860C0FDFE6EEF14CF2414E764BF7A103CFD0D172A9ACCE9C38763F46D157D731051D4F58A20E75F8775F51ED39AD7B7B655A60F6A8BF3D679232992630E690CA84B03DE7267D60D4FF059677D157E0639E3256D712F5C4BDC6022EDD24510C895CDEC2ACA6FBC5A9EB784D5ACF242E490D3A6DE105976F8F5CE70A95200F0CCA64A879632AA3047E060E099110DC102921C1585E451C2CE92DB2D47F8534CC3EAC25D7B9248B4FC0E7F271EC1E61F19CD30504C542AEC0674EB1F2904626A92167E455815C19DE4B081F20D93CC09AEEE543ACF51812E48AF239C2ACA5ED26D0968A83227F0B4F147EDF3CF29AEEE523AFF51812F98AF2B90A7CBDAC3ED9B32D176DF71D2CE48A1C7CB779B3414957E489CE3357B558EF3AB7C0B24DF148637DE9E66974AFF7CF9328BC8D58A963B67C3F8DD2C457F512D97B77249983ECAF47D1E7BA35294E58BAE88D2E6DF2DD367DBA4A11CB25F269A6462332DA194D83CE78E0ACF08C8E6265058612CB8DC658602878ECFE6079A89D61A17E8DA18E4C93DDA16BD6E5353F0506129C135FBF5F2644F824B033047D113457B09421C19E81AF2C7CD0096C0E944BBBEE29F7694C58B7D206C9062F01A55629C0DC3985187880FA75FB7F3BC9A500C351EBFC32F26A09D42BAFF2D45E9308669EEF20B78CE2A8B12CAAED95E65753F13E71EE7A880CC9B16624B695BEF33CD35D0D69245240524BF4D38F6A35BB60AC67054E56F9CB42E49788993C8AEB14648D9F709DAA8536FA9295794D62ED8F36F222F1D630D0916863501483C1A0E62B934B7EC9D54EB4DC8166D85637FE52DD9AA656E457B7FA1A8BDCD56645354DEA6F6EE1E24E83DBFA518F8E34CC68A307D5989449D2DBF0E2462F73BF421E3C0D3D141085D781518C2E491CE39BAB8659E42BCE5403169337D3CDC7F850F3F07CD132CD97DA9692F0354BE660ECA2E8E2417F4A247920EAD9370942EB58B3D23BEAA890552F663B56456D15A7D5FF9AA21B5768698839F9395AA58E65068291E0365986171146928E17FB246269C8575FE3ABB9E879CFE473AF976D5623CF30C4EAE596C7AC4BB0E9FE5EC129EA60FBF0B417768F0075117639B7BAEFEACEEDBE05D771B20395B78D5716AAA2EF6D1FAAFC1ADB3C545D845D0EAEA6EDBA7BBBA6F7559C765397BB4B9DFA3C6DDB76AF379E3975AC1BCA3C524A2F6F2AE3461AE5B7C37A68DDBA2EF411D7413F3DD1405D15D3A59010EEAB03FBD3DFD884D10C7D2F0E5C124E6720A44682DCA383C323039A7F3D30B92744C07A60E52F865353E5D90D21A1DA75A4993C91C47F2489054B567CB7079B5F14E61DE2A5C65DD0D74F3BC0665F14151D9A4E06076B0EBCC059743176FFC8488E9D8B5FEF35D59E739D604B38760E9C3FB70648FB8A2EE8B612DEE8F7DDE9F16E60190D830BF5CCF99C789E39790D82900681361D53C1378401FF2FD05F31AA3F2F32F77299D239A07C5340EFBF02E1D9F3FF7A88AE13A1D38FC1B11B3C44185FDDF436C0EE5640776D9C3782F556A07A6DBC9F1DF1ABFBB5C22FD6635D2D10D96B42F59A81ADCFFDDFDAB40D703B7BFAC132ABFDFC084B5CCDD0250BF563240E7EA3C0CA33177C1615956E68541CB11E329204587D2789A433E24BDCF601A776F52DED17C25235CFA3CB820B7E9DCA3855133DBA902DEBCE50FD6295FC0C9C6CEA3CBA8EB36F45776102AA49D104B8E61F53CA8252EFF3960771070BD588F26FDB552CA5FAD67DBE2C39D95FBB7731CADD57F6CF3B086386CCC4359F922718A2DB67019F604EFC6531C47633591F88A6DB47A794CC13128A9C47458F1F31878370F1FE5F98DA353185270000 , N'6.4.4')

select * from Publisher
select * from Book
select * from Member
select * from Review
