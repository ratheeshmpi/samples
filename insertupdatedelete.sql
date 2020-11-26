USE [ILA_DEV_Trapac_202000623]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 26-11-2020 20:04:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Mobile] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE Procedure [dbo].[InsertUpdateEmployee]    
(    
@Id integer,    
@Name nvarchar(50),    
@Age integer,  
@Mobile integer,
@Email nvarchar(50),  
@State nvarchar(50),    
@Country nvarchar(50),    
@Action varchar(10)    
)    
As    
Begin    
if @Action='Insert'    
Begin    
 Insert into Employee
 (
 Name,
 Age,
 Mobile,
 Email,
 State,
 Country
 ) 
 values
 (
 @Name,
 @Age,
 @Mobile,
 @Email,
 @State,
 @Country
 );    
End    
if @Action='Update'    
Begin    
 Update Employee 
 set 
 Name=@Name,
 Age=@Age, 
 Mobile=@Mobile,
 Email=@Email, 
 State=@State,
 Country=@Country
  where
  
   EmployeeID=@Id;    
End      
End  
GO





Create Procedure DeleteEmployee    

(    

 @Id integer    

)    

as     

Begin    

 Delete Employee where EmployeeID=@Id;    

End