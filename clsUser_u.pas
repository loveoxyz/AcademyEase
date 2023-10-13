unit clsUser_u;

interface

type
  tUser = class(TObject)
  private
    fFirstname, fSurname, fUsername, fEmail, fPassword : String;
  public
    constructor Create(sUser, sName, sSurname, sEmail, sPassword : String);

    function SetUsername(sUsername: String): String;
    function SetFirstName(sFirstName: String): String;
    function SetSurname(sSurname: String): String;
    function SetEmail(sEmail: String): String;
    function SetPassword(sPassword: String): String;

    function GetUsername: String;
    function GetFirstName: String;
    function GetSurname: String;
    function GetEmail: String;
    function GetPassword: String;
  end;

implementation

{ TUser }

constructor TUser.Create(sUser, sName, sSurname, sEmail, sPassword: String);
begin

  fUsername := sUser;
  fFirstname := sName;
  fSurname := sSurname;
  fEmail := sEmail;
  fPassword := sPassword;

end;

function TUser.GetEmail: String;
begin
result := fEmail;
end;

function TUser.GetFirstname: String;
begin
result := fFirstname;
end;

function TUser.GetPassword: String;
begin
result := fPassword;
end;

function TUser.GetSurname: String;
begin
result := fSurname;
end;

function tUser.GetUsername: String;
begin
  result := fUsername;
end;

function tUser.SetEmail(sEmail: String): String;
begin
  sEmail := fEmail;
end;

function tUser.SetFirstname(sFirstName: String): String;
begin
  sFirstname := fFirstname;
end;

function tUser.SetPassword(sPassword: String): String;
begin
  sPassword := fPassword;
end;

function tUser.SetSurname(sSurname: String): String;
begin
  sSurname := fSurname;
end;

function tUser.SetUsername(sUsername: String): String;
begin
  sUsername := fUsername;
end;

end.
