USE [MG_SOLUCIONES]
GO
/****** Object:  Table [dbo].[TBL_MATERIALES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MATERIALES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MATERIAL] [varchar](200) NULL,
	[CANTIDAD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_MATERIALES_SOLICITUDES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MATERIALES_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_INGRESO] [datetime] NULL,
	[NUM_EXP] [int] NOT NULL,
	[ID_MATERIAL] [int] NULL,
	[CANTIDAD] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_NOTAS_SOLICITUDES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_NOTAS_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_NOTA] [datetime] NULL,
	[NUM_EXP] [int] NOT NULL,
	[OBSERVACIONES] [varchar](1000) NULL,
	[CEDULA_USUARIO_INSERTO_NOTA] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_ROL_USUARIO]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ROL_USUARIO](
	[ID_ROL] [int] IDENTITY(1,1) NOT NULL,
	[ROL_USUARIO] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_SOLICITUDES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_INGRESO] [datetime] NULL,
	[NUM_EXP] [int] NOT NULL,
	[POLIZA] [varchar](10) NULL,
	[ASEGURADO] [varchar](200) NULL,
	[CONTACTO] [varchar](100) NULL,
	[FACT] [varchar](100) NULL,
	[TECNICO] [varchar](100) NULL,
	[DIRECCION] [varchar](100) NULL,
	[OBSERVACIONES] [varchar](1000) NULL,
	[ESTADO_CASO] [varchar](50) NULL,
	[CEDULA_USUARIO_CREACION] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_TURNOS]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_TURNOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CEDULA_TECNICO] [int] NULL,
	[NUM_EXP] [int] NOT NULL,
	[FECHA_TURNO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_USUARIOS]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USUARIOS](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CEDULA] [numeric](18, 0) NULL,
	[NOMBRE] [varchar](100) NULL,
	[CONTRASEÑA] [varchar](30) NULL,
	[CARGO] [varchar](50) NULL,
	[ID_ROL] [int] NULL,
	[ESTADO] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TBL_MATERIALES_SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([ID_MATERIAL])
REFERENCES [dbo].[TBL_MATERIALES] ([ID])
GO
ALTER TABLE [dbo].[TBL_MATERIALES_SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([ID_MATERIAL])
REFERENCES [dbo].[TBL_MATERIALES] ([ID])
GO
ALTER TABLE [dbo].[TBL_USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[TBL_ROL_USUARIO] ([ID_ROL])
GO
ALTER TABLE [dbo].[TBL_USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[TBL_ROL_USUARIO] ([ID_ROL])
GO
/****** Object:  StoredProcedure [dbo].[ABC_SOLICITUDES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ABC_SOLICITUDES]
	@ACCION VARCHAR(50),
	@ID INT,
	@NUM_EXP INT,
	@POLIZA VARCHAR (10),
	@ASEGURADO VARCHAR (200),
	@CONTACTO VARCHAR(100),
	@FACT VARCHAR(100),
	@TECNICO VARCHAR(100),
	@DIRECCION VARCHAR (100),
	@OBSERVACIONES VARCHAR (1000),
	@ESTADO_CASO VARCHAR(50),
	@CEDULA_USUARIO_CREACION INT
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_SOLICITUDES (
	FECHA_INGRESO, 
	NUM_EXP, 
	POLIZA,
	ASEGURADO,
	CONTACTO,
	FACT,
	TECNICO,
	DIRECCION,
	OBSERVACIONES,
	ESTADO_CASO,
	CEDULA_USUARIO_CREACION)
	VALUES (
	GETDATE(), @NUM_EXP, @POLIZA, @ASEGURADO, @CONTACTO, @FACT, @TECNICO, @DIRECCION, @OBSERVACIONES, @ESTADO_CASO, @CEDULA_USUARIO_CREACION
	)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_SOLICITUDES 
	SET CONTACTO =@CONTACTO, TECNICO=@TECNICO, DIRECCION=@DIRECCION, ESTADO_CASO=@ESTADO_CASO
	WHERE ID = @ID
END
END



GO
/****** Object:  StoredProcedure [dbo].[ABC_TURNO_TECNICO]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ABC_TURNO_TECNICO]
	@ACCION VARCHAR(50),
	@ID INT,
	@CEDULA_TECNICO INT,
	@NUM_EXP INT,
	@FECHA_TURNO DATETIME
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_TURNOS (
	CEDULA_TECNICO,
	NUM_EXP,
	FECHA_TURNO)
	VALUES (@CEDULA_TECNICO, @NUM_EXP, @FECHA_TURNO)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_TURNOS 
	SET FECHA_TURNO = @FECHA_TURNO
	WHERE ID = @ID
END
END




GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_ABIERTOS]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_ABIERTOS]
AS BEGIN
SELECT * FROM TBL_SOLICITUDES
WHERE TECNICO = '' AND ESTADO_CASO = 'ABIERTO'
END



GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_AGENDADOS]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_AGENDADOS]
AS BEGIN
SELECT * FROM TBL_SOLICITUDES
WHERE ESTADO_CASO = 'AGENDADO'
END




GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_ASIGNADOS]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_ASIGNADOS]
AS BEGIN
SELECT * FROM TBL_SOLICITUDES
WHERE ESTADO_CASO = 'ASIGNADO'
END




GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_TECNICOS_LIBRES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECCIONA_TECNICOS_LIBRES]
AS BEGIN
SELECT * FROM TBL_USUARIOS
WHERE ID_ROL = 3 AND CEDULA NOT IN (SELECT CEDULA_TECNICO FROM TBL_TURNOS) AND ESTADO = 'ACTIVO'
END


GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_SOLICITUDES]    Script Date: 17/04/2017 4:55:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONAR_SOLICITUDES]
@ID INT
AS BEGIN
SELECT * FROM TBL_SOLICITUDES
WHERE ID = @ID
END




GO
