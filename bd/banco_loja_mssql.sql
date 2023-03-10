USE [loja]
GO
/****** Object:  Table [dbo].[estoque]    Script Date: 06/05/2022 10:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estoque](
	[idestoque] [int] IDENTITY(1,1) NOT NULL,
	[id_produto] [nchar](10) NULL,
	[quantidade_estoque] [nchar](10) NULL,
 CONSTRAINT [PK_estoque] PRIMARY KEY CLUSTERED 
(
	[idestoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produtos]    Script Date: 06/05/2022 10:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produtos](
	[idproduto] [int] IDENTITY(1,1) NOT NULL,
	[codigo_produto] [nvarchar](100) NULL,
	[codigo_barras] [nvarchar](100) NULL,
	[descricao_produto] [nvarchar](200) NULL,
	[unidade_produto] [nvarchar](10) NULL,
	[valor_unitario_produto] [float] NULL,
	[quantidade_produto] [int] NULL,
	[valor_total_produto] [float] NULL,
 CONSTRAINT [PK_produtos] PRIMARY KEY CLUSTERED 
(
	[idproduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 06/05/2022 10:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[idusuarios] [int] IDENTITY(1,1) NOT NULL,
	[nome_usuario] [nvarchar](100) NULL,
	[senha_usuario] [nvarchar](200) NULL,
	[usuario_ativo] [char](1) NULL,
	[data_cadastro] [date] NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[idusuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
