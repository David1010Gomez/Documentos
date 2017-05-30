USE [MG_SOLUCIONES]
GO
/****** Object:  Table [dbo].[TBL_MATERIALES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_MATERIALES_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_MATERIALES_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_INGRESO] [datetime] NULL,
	[ID_SOLICITUD] [int] NOT NULL,
	[ID_MATERIAL] [int] NULL,
	[CANTIDAD] [varchar](20) NULL,
	[CEDULA_TECNICO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_NOTAS_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_NOTAS_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_NOTA] [datetime] NULL,
	[ID_SOLICITUD] [int] NOT NULL,
	[OBSERVACIONES] [varchar](1000) NULL,
	[CEDULA_USUARIO_INSERTO_NOTA] [int] NULL,
	[ESTADO_CASO] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ROL_USUARIO]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SERVICIO_SOLICITUD]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SERVICIO_SOLICITUD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_SERVICIO] [int] NULL,
	[ID_SOLICITUD] [int] NULL,
	[CEDULA_TECNICO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_INGRESO] [datetime] NULL,
	[NUM_EXP] [int] NOT NULL,
	[POLIZA] [varchar](10) NULL,
	[ASEGURADO] [varchar](200) NULL,
	[CONTACTO] [varchar](100) NULL,
	[FACT] [varchar](100) NULL,
	[DIRECCION] [varchar](100) NULL,
	[ESTADO_CASO] [varchar](50) NULL,
	[CEDULA_USUARIO_CREACION] [int] NULL,
	[FECHA_CIERRE] [datetime] NULL,
	[CEDULA_USUARIO_CIERRE] [int] NULL,
	[USUARIO_ULTIMA_ACTUALIZACION] [int] NULL,
	[VALOR_TRABAJO] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TECNICOS_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TECNICOS_SOLICITUDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_SOLICITUD] [int] NULL,
	[CEDULA_TECNICO] [int] NULL,
	[NOMBRE_TECNICO] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TIPO_SERVICIO]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TIPO_SERVICIO](
	[ID_SERVICIO] [int] IDENTITY(1,1) NOT NULL,
	[SERVICIO] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SERVICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TURNOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TURNOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CEDULA_TECNICO] [int] NULL,
	[ID_SOLICITUD] [int] NOT NULL,
	[FECHA_TURNO] [varchar](50) NULL,
	[TRABAJO] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_USUARIOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_USUARIOS](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CEDULA] [numeric](18, 0) NULL,
	[NOMBRE] [varchar](100) NULL,
	[CONTRASEÑA] [varchar](30) NULL,
	[CARGO] [varchar](50) NULL,
	[ID_ROL] [int] NULL,
	[ESTADO] [varchar](30) NULL,
	[DISPONIBLE] [varchar](50) NULL,
	[ULTIMA_ACTUALIZACION] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TBL_MATERIALES_SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([ID_MATERIAL])
REFERENCES [dbo].[TBL_MATERIALES] ([ID])
GO
ALTER TABLE [dbo].[TBL_MATERIALES_SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([ID_MATERIAL])
REFERENCES [dbo].[TBL_MATERIALES] ([ID])
GO
ALTER TABLE [dbo].[TBL_MATERIALES_SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([ID_SOLICITUD])
REFERENCES [dbo].[TBL_MATERIALES] ([ID])
GO
ALTER TABLE [dbo].[TBL_TURNOS]  WITH CHECK ADD FOREIGN KEY([ID_SOLICITUD])
REFERENCES [dbo].[TBL_SOLICITUDES] ([ID])
GO
ALTER TABLE [dbo].[TBL_USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[TBL_ROL_USUARIO] ([ID_ROL])
GO
ALTER TABLE [dbo].[TBL_USUARIOS]  WITH CHECK ADD FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[TBL_ROL_USUARIO] ([ID_ROL])
GO
/****** Object:  StoredProcedure [dbo].[ABC_MATERIALES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[ABC_MATERIALES]
	@ACCION VARCHAR(50),
	@ID INT,
	@MATERIAL VARCHAR(200),
	@CANTIDAD VARCHAR(20)
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_MATERIALES(
	MATERIAL,
	CANTIDAD)
	VALUES ( @MATERIAL, @CANTIDAD)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_MATERIALES 
	SET CANTIDAD = @CANTIDAD
	WHERE ID = @ID
END
END















GO
/****** Object:  StoredProcedure [dbo].[ABC_MATERIALES_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ABC_MATERIALES_SOLICITUDES]
	@ACCION VARCHAR(50),
	@ID INT,
	@FECHA_INGRESO DATETIME,
	@ID_SOLICITUD INT,
	@ID_MATERIAL INT,
	@CANTIDAD VARCHAR(20),
	@CEDULA_TECNICO INT
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_MATERIALES_SOLICITUDES(
	FECHA_INGRESO,
	ID_SOLICITUD,
	ID_MATERIAL,
	CANTIDAD,
	CEDULA_TECNICO)
	VALUES (GETDATE(), @ID_SOLICITUD, @ID_MATERIAL, @CANTIDAD, @CEDULA_TECNICO)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_MATERIALES_SOLICITUDES 
	SET CANTIDAD = @CANTIDAD
	WHERE ID = @ID
END
END














GO
/****** Object:  StoredProcedure [dbo].[ABC_SERVICIO_SOLICITUD]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[ABC_SERVICIO_SOLICITUD]
	@ACCION VARCHAR(50),
	@ID_SERVICIO INT,
	@ID_SOLICITUD INT,
	@CEDULA_TECNICO INT
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_SERVICIO_SOLICITUD (
	ID_SERVICIO,
	ID_SOLICITUD,
	CEDULA_TECNICO)
	VALUES (@ID_SERVICIO, @ID_SOLICITUD, @CEDULA_TECNICO)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_SERVICIO_SOLICITUD
	SET CEDULA_TECNICO = @CEDULA_TECNICO
	WHERE ID_SOLICITUD = @ID_SOLICITUD AND ID_SERVICIO = @ID_SERVICIO
END
END














GO
/****** Object:  StoredProcedure [dbo].[ABC_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
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
	@DIRECCION VARCHAR (100),
	@ESTADO_CASO VARCHAR(50),
	@CEDULA_USUARIO_CREACION INT,
	@FECHA_CIERRE DATETIME,
	@CEDULA_USUARIO_CIERRE INT,
	@USUARIO_ULTIMA_ACTUALIZACION INT,
	@VALOR_TRABAJO VARCHAR(100)
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
	DIRECCION,
	ESTADO_CASO,
	CEDULA_USUARIO_CREACION,
	FECHA_CIERRE,
	CEDULA_USUARIO_CIERRE,
	USUARIO_ULTIMA_ACTUALIZACION,
	VALOR_TRABAJO
	)
	VALUES (
	GETDATE(), @NUM_EXP, @POLIZA, @ASEGURADO, @CONTACTO, @FACT, @DIRECCION, @ESTADO_CASO, @CEDULA_USUARIO_CREACION, NULL, NULL, @USUARIO_ULTIMA_ACTUALIZACION, @VALOR_TRABAJO
	)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_SOLICITUDES 
	SET POLIZA=@POLIZA, ASEGURADO=@ASEGURADO, CONTACTO =@CONTACTO, FACT=@FACT, DIRECCION=@DIRECCION, ESTADO_CASO=@ESTADO_CASO, USUARIO_ULTIMA_ACTUALIZACION = @USUARIO_ULTIMA_ACTUALIZACION, VALOR_TRABAJO = @VALOR_TRABAJO
	WHERE ID = @ID
END
IF(@ACCION = 'CIERRE UPDATE')
BEGIN
	UPDATE TBL_SOLICITUDES
	SET POLIZA=@POLIZA, ASEGURADO=@ASEGURADO, CONTACTO =@CONTACTO, FACT=@FACT, DIRECCION=@DIRECCION, ESTADO_CASO=@ESTADO_CASO, USUARIO_ULTIMA_ACTUALIZACION = @USUARIO_ULTIMA_ACTUALIZACION, VALOR_TRABAJO = @VALOR_TRABAJO,
	 FECHA_CIERRE = @FECHA_CIERRE, CEDULA_USUARIO_CIERRE = @CEDULA_USUARIO_CIERRE
	WHERE ID=@ID
END
END














GO
/****** Object:  StoredProcedure [dbo].[ABC_TURNO_TECNICO]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ABC_TURNO_TECNICO]
	@ACCION VARCHAR(50),
	@ID INT,
	@CEDULA_TECNICO INT,
	@ID_SOLICITUD INT,
	@FECHA_TURNO varchar(50),
	@TRABAJO VARCHAR(50)
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_TURNOS (
	CEDULA_TECNICO,
	ID_SOLICITUD,
	FECHA_TURNO,
	TRABAJO)
	VALUES (@CEDULA_TECNICO, @ID_SOLICITUD, @FECHA_TURNO, @TRABAJO)
END
IF (@ACCION = 'UPDATE')
BEGIN
	UPDATE TBL_TURNOS 
	SET FECHA_TURNO = @FECHA_TURNO, TRABAJO=@TRABAJO
	WHERE ID_SOLICITUD = @ID_SOLICITUD AND CEDULA_TECNICO = @CEDULA_TECNICO
END
IF (@ACCION = 'UPDATE TRABAJO')
BEGIN
	UPDATE TBL_TURNOS 
	SET TRABAJO = @TRABAJO
	WHERE ID_SOLICITUD = @ID_SOLICITUD
END
END













GO
/****** Object:  StoredProcedure [dbo].[ACTULIZA_ESTADO_TECNICO]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[ACTULIZA_ESTADO_TECNICO]
	@CEDULA INT,
	@DISPONIBLE VARCHAR(50)
AS BEGIN
	UPDATE TBL_USUARIOS
	SET DISPONIBLE = @DISPONIBLE, ULTIMA_ACTUALIZACION = GETDATE()
	WHERE CEDULA = @CEDULA
END












GO
/****** Object:  StoredProcedure [dbo].[INSERTA_NOTAS_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[INSERTA_NOTAS_SOLICITUDES]
	@ACCION VARCHAR(50),
	@ID INT,
	@FECHA_NOTA DATETIME,
	@ID_SOLICITUD INT,
	@OBSERVACIONES VARCHAR (1000),
	@CEDULA_USUARIO_INSERTO_NOTA INT,
	@ESTADO_CASO VARCHAR(50)
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
	INSERT INTO TBL_NOTAS_SOLICITUDES(
	FECHA_NOTA, 
	ID_SOLICITUD, 
	OBSERVACIONES,
	CEDULA_USUARIO_INSERTO_NOTA,
	ESTADO_CASO
	)
	VALUES (
		GETDATE(), @ID_SOLICITUD, @OBSERVACIONES, @CEDULA_USUARIO_INSERTO_NOTA, @ESTADO_CASO
	)
END

END












GO
/****** Object:  StoredProcedure [dbo].[INSERTA_TECNICO_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[INSERTA_TECNICO_SOLICITUDES]
	@ID_SOLICITUD INT,
	@CEDULA_TECNICO INT,
	@NOMBRE_TECNICO VARCHAR (100)
AS BEGIN

	INSERT INTO TBL_TECNICOS_SOLICITUDES(
	ID_SOLICITUD,
	CEDULA_TECNICO,
	NOMBRE_TECNICO
	)
	VALUES (@ID_SOLICITUD, @CEDULA_TECNICO, @NOMBRE_TECNICO)

END
















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CANTIDAD_MATERIAL]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_CANTIDAD_MATERIAL]
@ID INT
AS BEGIN
SELECT CANTIDAD FROM TBL_MATERIALES
WHERE ID = @ID
END












GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_ABIERTOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_ABIERTOS]
AS BEGIN
SELECT * FROM TBL_SOLICITUDES
WHERE ESTADO_CASO = 'ABIERTO'
END














GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_AGENDADOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_AGENDADOS]
AS BEGIN
SELECT T1.*, T2.TRABAJO FROM TBL_SOLICITUDES T1
LEFT JOIN TBL_TURNOS T2
ON T1.ID = T2.ID_SOLICITUD
WHERE ESTADO_CASO = 'AGENDADO'
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_CASOS_ASIGNADOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_CASOS_ASIGNADOS]
AS BEGIN
SELECT T1.*, T2.TRABAJO FROM TBL_SOLICITUDES T1
LEFT JOIN TBL_TURNOS T2
ON T1.ID = T2.ID_SOLICITUD
WHERE T1.ESTADO_CASO = 'ASIGNADO'
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_HISTORIAL_SOLICITUD]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_HISTORIAL_SOLICITUD]
@ID_SOLICITUD INT
AS BEGIN
SELECT * FROM TBL_NOTAS_SOLICITUDES
WHERE ID_SOLICITUD = @ID_SOLICITUD
END
















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_MATERIALES_A_AGREGAR]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECCIONA_MATERIALES_A_AGREGAR]
AS BEGIN
SELECT * FROM TBL_MATERIALES
WHERE CANTIDAD > 0
END











GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_MAXIMO_ID]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECCIONA_MAXIMO_ID]
@NUM_EXP INT
AS BEGIN
SELECT MAX(ID)ID
FROM TBL_SOLICITUDES 
WHERE NUM_EXP = @NUM_EXP
END

















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_TECNICOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECCIONA_TECNICOS]
AS BEGIN
SELECT * FROM TBL_USUARIOS
WHERE ID_ROL = 3 AND ESTADO = 'ACTIVO'
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_TECNICOS_LIBRES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECCIONA_TECNICOS_LIBRES]
AS BEGIN
SELECT * FROM TBL_USUARIOS
WHERE ID_ROL = 3 AND DISPONIBLE = 'DISPONIBLE' AND ESTADO = 'ACTIVO'
ORDER BY ULTIMA_ACTUALIZACION ASC
END














GO
/****** Object:  StoredProcedure [dbo].[SELECCIONA_TIPO_SERVICIOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONA_TIPO_SERVICIOS]
AS BEGIN
SELECT * FROM TBL_TIPO_SERVICIO
END
















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_MATERIALES_SOLICITUD]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SELECCIONAR_MATERIALES_SOLICITUD]
@ID_SOLICITUD INT,
@CEDULA_TECNICO INT
AS BEGIN
SELECT *, MATERIAL FROM TBL_MATERIALES_SOLICITUDES T1
JOIN TBL_MATERIALES T2
ON ID_MATERIAL = T2.ID
WHERE ID_SOLICITUD = @ID_SOLICITUD AND CEDULA_TECNICO=@CEDULA_TECNICO AND T1.CANTIDAD > 0
END










GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_SERVICIOS_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECCIONAR_SERVICIOS_SOLICITUDES]
@ACCION VARCHAR(50),
@ID_SERVICIO INT,
@ID_SOLICITUD INT,
@CEDULA_TECNICO INT
AS BEGIN
IF(@ACCION = 'INSERTAR')
BEGIN
SELECT * FROM TBL_SERVICIO_SOLICITUD
WHERE ID_SERVICIO = @ID_SERVICIO AND ID_SOLICITUD=@ID_SOLICITUD
END
IF(@ACCION = 'LISTAR')
BEGIN
SELECT T1.ID_SERVICIO, T2.SERVICIO FROM TBL_SERVICIO_SOLICITUD T1
LEFT JOIN TBL_TIPO_SERVICIO T2
ON T1.ID_SERVICIO = T2.ID_SERVICIO
WHERE T1.ID_SOLICITUD = @ID_SOLICITUD
END
IF(@ACCION = 'LISTAR_POR_TECNICO')
BEGIN
SELECT T1.ID_SERVICIO, T2.SERVICIO FROM TBL_SERVICIO_SOLICITUD T1
LEFT JOIN TBL_TIPO_SERVICIO T2
ON T1.ID_SERVICIO = T2.ID_SERVICIO
WHERE T1.ID_SOLICITUD = @ID_SOLICITUD AND T1.CEDULA_TECNICO = @CEDULA_TECNICO
END
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONAR_SOLICITUDES]
@ID INT
AS BEGIN
SELECT T1.*, T2.TRABAJO FROM TBL_SOLICITUDES T1
LEFT JOIN TBL_TURNOS T2
ON T1.ID = T2.ID_SOLICITUD
WHERE T1.ID = @ID
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_TECNICOS_SOLICITUDES]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SELECCIONAR_TECNICOS_SOLICITUDES]
@ACCION VARCHAR(20),
@ID_SOLICITUD INT, 
@CEDULA_TECNICO INT
AS BEGIN
IF (@ACCION = 'INSERTAR')
BEGIN
SELECT * FROM TBL_TECNICOS_SOLICITUDES
WHERE ID_SOLICITUD=@ID_SOLICITUD AND CEDULA_TECNICO = @CEDULA_TECNICO 
END
IF(@ACCION = 'LISTAR')
BEGIN
SELECT T1.CEDULA_TECNICO, T1.NOMBRE_TECNICO FROM TBL_TECNICOS_SOLICITUDES T1
WHERE T1.ID_SOLICITUD = @ID_SOLICITUD
END
END















GO
/****** Object:  StoredProcedure [dbo].[SELECCIONAR_TURNOS]    Script Date: 29/05/2017 22:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SELECCIONAR_TURNOS]
@ID INT,
@CEDULA_TECNICO INT
AS BEGIN
SELECT * FROM TBL_TURNOS
WHERE ID_SOLICITUD = @ID AND CEDULA_TECNICO = @CEDULA_TECNICO
END
















GO
