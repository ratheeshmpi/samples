use WebApiAngular
CREATE TABLE SampleAPI (UserId int,UserName varchar(20))

CREATE PROCEDURE [dbo].[Sp_Insert]
(@UserId int,
@UserName varchar(20))
As
begin
insert into SampleAPI values(@UserId,@UserName) 
end


select * from SampleAPI


CREATE PROCEDURE [dbo].[sp_Delete]
(@UserId int,
@UserName varchar(20))
AS BEGIN
delete from SampleAPI where UserId=@UserId and UserName=@UserName
End

drop procedure sp_Delete

Create procedure [dbo].[sp_Update]       
    (@UserId INT ,      
      @UserName varchar(30))        
    As        
    begin        
       Update SampleAPI         
       set UserName =@UserName 
       where UserId=@UserId       
    End 