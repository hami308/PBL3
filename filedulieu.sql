USE [QUANLYHDTN]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baocaotaikhoan]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baocaotaikhoan](
	[IDtaikhoan] [int] NOT NULL,
	[IDtaikhoanbibaocao] [int] NOT NULL,
	[Lydo] [nvarchar](500) NULL,
	[Thoigian] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Canhan]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canhan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Sdt] [char](10) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Canhan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoatdongtinhnguyen]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoatdongtinhnguyen](
	[IDhoatdong] [int] IDENTITY(1,1) NOT NULL,
	[IDtochuc] [int] NULL,
	[Tenhoatdong] [nvarchar](100) NULL,
	[Thoigianbatdau] [date] NULL,
	[Thoigianketthuc] [date] NULL,
	[Diadiem] [nvarchar](100) NULL,
	[Soluongtnv] [int] NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_Hoatdongtinhnguyen] PRIMARY KEY CLUSTERED 
(
	[IDhoatdong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoatdongyeuthich]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoatdongyeuthich](
	[IDcanhan] [int] NOT NULL,
 CONSTRAINT [PK_Hoatdongyeuthich] PRIMARY KEY CLUSTERED 
(
	[IDcanhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tinhnguyenvien]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinhnguyenvien](
	[Idhoatdong] [int] NOT NULL,
	[Thoigiandangki] [date] NULL,
	[Tinhtrangduyetdon] [bit] NULL,
	[Tinhtrangthamgia] [bit] NULL,
	[Danhgiatutochuc] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tochuc]    Script Date: 3/22/2024 9:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tochuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tentochuc] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Tochuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
