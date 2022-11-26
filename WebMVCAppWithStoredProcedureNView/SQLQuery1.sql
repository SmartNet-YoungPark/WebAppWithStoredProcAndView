CREATE TABLE [dbo].[StudentReg]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [Address] NVARCHAR(100) NULL
	)


Create procedure [dbo].[AddNewStudent]  
(  
   @Name nvarchar (50),  
   @City nvarchar (50),  
   @Address nvarchar (100)  
)  
as  
begin  
   Insert into StudentReg values(@Name,@City,@Address)  
End

Create Procedure [dbo].[GetStudentDetails]  
as  
begin  
   select * from StudentReg
End

Create procedure [dbo].[UpdateStudentDetails]  
(  
   @StdId int,  
   @Name nvarchar (50),  
   @City nvarchar (50),  
   @Address nvarchar (100)  
)  
as  
begin  
   Update StudentReg   
   set Name=@Name,  
   City=@City,  
   Address=@Address  
   where Id=@StdId  
End

Create procedure [dbo].[DeleteStudent]  
(  
   @StdId int  
)  
as   
begin  
   Delete from StudentReg where Id=@StdId  
End


exec GetStudentDetails