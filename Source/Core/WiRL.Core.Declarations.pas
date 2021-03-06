{******************************************************************************}
{                                                                              }
{       WiRL: RESTful Library for Delphi                                       }
{                                                                              }
{       Copyright (c) 2015-2017 WiRL Team                                      }
{                                                                              }
{       https://github.com/delphi-blocks/WiRL                                  }
{                                                                              }
{******************************************************************************}
unit WiRL.Core.Declarations;

interface

uses
  System.SysUtils, System.Rtti;

type
  {$IF CompilerVersion < 31}
  UTF8Char = AnsiChar;
  {$ENDIF}

  TAttributeArray = TArray<TCustomAttribute>;
  TArgumentArray = array of TValue;

  TStringArray = TArray<string>;
  {$IF CompilerVersion >= 31} //10.1 Berlin
  TStringArrayHelper = record helper for TStringArray
  public
    function Size: Integer;
    function IsEmpty: Boolean;
  end;
  {$ENDIF}


implementation

{$IF CompilerVersion >= 31} //10.1 Berlin

{ TStringArrayHelper }

function TStringArrayHelper.IsEmpty: Boolean;
begin
  Result := Length(Self) = 0;
end;

function TStringArrayHelper.Size: Integer;
begin
  Result := Length(Self);
end;
{$ENDIF}

end.
