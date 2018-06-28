{******************************************************************************}
{                                                                              }
{                       Pascal Script Source File                              }
{                                                                              }
{             Run by RemObjects Pascal Script in CnPack IDE Wizards            }
{                                                                              }
{                                   Generated by CnPack IDE Wizards            }
{                                                                              }
{       Can Locate and Select Component by Editor Selection as Name            }
{       Please Add it to Script Library and Assign a Shortcut to it            }
{                                                                              }
{******************************************************************************}

program SelCompByEditor;

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

var
  S: string;
  Root, Comp: TComponent;
  FormDesigner: IDesigner;
  List: IDesignerSelections;
begin
  S := CnOtaGetCurrentSelection;
  if S <> '' then
  begin
    FormDesigner := CnOtaGetFormDesigner(nil);
    if FormDesigner <> nil then
    begin
      Root := CnOtaGetRootComponentFromEditor(CnOtaGetCurrentFormEditor);
      if Root <> nil then
      begin
        Comp := Root.FindComponent(S);
        if Comp <> nil then
        begin
          List := CreateSelectionList;
          List.Add(Comp); // Delphi 6 or above
          FormDesigner.SetSelections(List);
          CnOtaShowDesignerForm;
          List := nil;
        end;
      end;
    end;
  end;
end.
 
 