
CREATE TABLE [dbo].[Cuentas](
	[CuentaId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Balance] [float] NULL,
	[Porciento] [int] NULL,
 CONSTRAINT [PK_Cuentas] PRIMARY KEY CLUSTERED 
(
	[CuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


