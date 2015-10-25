
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/26/2015 08:21:23
-- Generated from EDMX file: E:\popitki\LifeDemotivator\LifeDemotivator\Models\ModelDemotivator.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-LifeDemotivator-20151023125401];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'DemotivatorSet'
CREATE TABLE [dbo].[DemotivatorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DemotivatorName] nvarchar(max)  NOT NULL,
    [CreatDate] datetime  NOT NULL,
    [UrlDemotivator] nvarchar(max)  NOT NULL,
    [OriginUrlDemotivator] nvarchar(max)  NOT NULL,
    [HeaderString] nvarchar(max)  NOT NULL,
    [SecondString] nvarchar(max)  NOT NULL,
    [AspNetUsersId] nvarchar(128)  NOT NULL,
    [RatingIdDemotivator] int  NOT NULL,
    [RatingIdUser] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RatingSet'
CREATE TABLE [dbo].[RatingSet] (
    [IdDemotivator] int IDENTITY(1,1) NOT NULL,
    [IdUser] nvarchar(max)  NOT NULL,
    [RatingCount] nvarchar(max)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'DemotivatorTegsSet'
CREATE TABLE [dbo].[DemotivatorTegsSet] (
    [IdTegs] int IDENTITY(1,1) NOT NULL,
    [IdDemotivator] nvarchar(max)  NOT NULL,
    [DemotivatorId] int  NOT NULL
);
GO

-- Creating table 'TegsSet'
CREATE TABLE [dbo].[TegsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [DemotivatorTegsIdTegs] int  NOT NULL,
    [DemotivatorTegsIdDemotivator] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DemotivatorSet'
ALTER TABLE [dbo].[DemotivatorSet]
ADD CONSTRAINT [PK_DemotivatorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdDemotivator], [IdUser] in table 'RatingSet'
ALTER TABLE [dbo].[RatingSet]
ADD CONSTRAINT [PK_RatingSet]
    PRIMARY KEY CLUSTERED ([IdDemotivator], [IdUser] ASC);
GO

-- Creating primary key on [IdTegs], [IdDemotivator] in table 'DemotivatorTegsSet'
ALTER TABLE [dbo].[DemotivatorTegsSet]
ADD CONSTRAINT [PK_DemotivatorTegsSet]
    PRIMARY KEY CLUSTERED ([IdTegs], [IdDemotivator] ASC);
GO

-- Creating primary key on [Id] in table 'TegsSet'
ALTER TABLE [dbo].[TegsSet]
ADD CONSTRAINT [PK_TegsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [AspNetUsersId] in table 'DemotivatorSet'
ALTER TABLE [dbo].[DemotivatorSet]
ADD CONSTRAINT [FK_AspNetUsersDemotivator]
    FOREIGN KEY ([AspNetUsersId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsersDemotivator'
CREATE INDEX [IX_FK_AspNetUsersDemotivator]
ON [dbo].[DemotivatorSet]
    ([AspNetUsersId]);
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'RatingSet'
ALTER TABLE [dbo].[RatingSet]
ADD CONSTRAINT [FK_RatingAspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RatingAspNetUsers'
CREATE INDEX [IX_FK_RatingAspNetUsers]
ON [dbo].[RatingSet]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [RatingIdDemotivator], [RatingIdUser] in table 'DemotivatorSet'
ALTER TABLE [dbo].[DemotivatorSet]
ADD CONSTRAINT [FK_RatingDemotivator]
    FOREIGN KEY ([RatingIdDemotivator], [RatingIdUser])
    REFERENCES [dbo].[RatingSet]
        ([IdDemotivator], [IdUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RatingDemotivator'
CREATE INDEX [IX_FK_RatingDemotivator]
ON [dbo].[DemotivatorSet]
    ([RatingIdDemotivator], [RatingIdUser]);
GO

-- Creating foreign key on [DemotivatorId] in table 'DemotivatorTegsSet'
ALTER TABLE [dbo].[DemotivatorTegsSet]
ADD CONSTRAINT [FK_DemotivatorDemotivatorTegs]
    FOREIGN KEY ([DemotivatorId])
    REFERENCES [dbo].[DemotivatorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DemotivatorDemotivatorTegs'
CREATE INDEX [IX_FK_DemotivatorDemotivatorTegs]
ON [dbo].[DemotivatorTegsSet]
    ([DemotivatorId]);
GO

-- Creating foreign key on [DemotivatorTegsIdTegs], [DemotivatorTegsIdDemotivator] in table 'TegsSet'
ALTER TABLE [dbo].[TegsSet]
ADD CONSTRAINT [FK_DemotivatorTegsTegs]
    FOREIGN KEY ([DemotivatorTegsIdTegs], [DemotivatorTegsIdDemotivator])
    REFERENCES [dbo].[DemotivatorTegsSet]
        ([IdTegs], [IdDemotivator])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DemotivatorTegsTegs'
CREATE INDEX [IX_FK_DemotivatorTegsTegs]
ON [dbo].[TegsSet]
    ([DemotivatorTegsIdTegs], [DemotivatorTegsIdDemotivator]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------