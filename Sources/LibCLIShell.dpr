library LibCLIShell;

uses
  System.SysUtils,
  System.Classes,
  { LiberSynth }
  LibSupport.uInterfaces;

{$R *.res}

type

  TLSLibraryMarker = class(TInterfacedObject, ILSLibraryMarker);

function LSLibraryMarker: ILSLibraryMarker; safecall;
begin
  Result := TLSLibraryMarker.Create;
end;

procedure InitLibrary(_LSLibrary: ILSLibrary);
begin

  _LSLibrary.RegisterTask('qwe');
  _LSLibrary.RegisterTask('asd');
  _LSLibrary.RegisterTask('zxc');

end;

exports

  LSLibraryMarker,
  InitLibrary;

begin
end.
