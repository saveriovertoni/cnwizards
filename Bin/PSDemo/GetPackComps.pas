{*******************************************************}
{                                                       }
{       Pascal Script Source File                       }
{       Run by RemObjects Pascal Script in CnWizards    }
{                                                       }
{       Generated by CnPack IDE Wizards                 }
{                                                       }
{*******************************************************}

program GetPackComps;

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

var
  PackSvcs: IOTAPackageServices;
  I, J: Integer;
begin
  PackSvcs := CnOtaGetPackageServices;
  if PackSvcs = nil then
  begin
    Writeln('No Package Services');
    Exit;
  end;

  for I := 0 to PackSvcs.GetPackageCount - 1 do
  begin
    Writeln(PackSvcs.GetPackageName(I));
    for J := 0 to PackSvcs.GetComponentCount(I) - 1 do
      Writeln(PackSvcs.GetComponentName(I, J));
  end;
end.
 
