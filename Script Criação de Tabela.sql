USE [LandonHotel]
GO

/*
 Object:  Table [dbo].[ReservaQuartos]    
 Script Date: 04/05/2024 17:07:14
*/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ReservaQuartos](
	[ID_RESERVA] [int] IDENTITY(1,1) NOT NULL,
	[CheckInData] [date] NOT NULL,
	[CheckOutData] [date] NOT NULL,
	[NumeroQuarto] [char](3) NOT NULL,
	[I'D_Hospede] [int] NOT NULL,
 CONSTRAINT [PK_ReservaQuartos] PRIMARY KEY CLUSTERED 
(
	[ID_RESERVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ReservaQuartos]  WITH CHECK ADD  CONSTRAINT [FK_ReservaQuartos_Hospedes] FOREIGN KEY([ID_Hospede])
REFERENCES [dbo].[Hospedes] ([ID_HOSPEDE])
GO

ALTER TABLE [dbo].[ReservaQuartos] CHECK CONSTRAINT [FK_ReservaQuartos_Hospedes]
GO


