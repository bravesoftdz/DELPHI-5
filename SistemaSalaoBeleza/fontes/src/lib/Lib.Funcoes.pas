(*
Descri��o:
  Fun��es de uso geral no projeto

Hist�rico de altera��es:
  v1.00  - 03/06/2012
    - Inclu�do a fun��o FormatarDescricaoVersaoExecutavel
    - Inclu�do a fun��o AbrirFormulario
*)

unit Lib.Funcoes;

interface


uses
  hlp.VersaoExecutavel,
  System.IniFiles,
  TypInfo,
  System.Types,
  System.RTTI,
  Vcl.Controls,
  Vcl.Forms,
  Dialogs,
  System.Variants,
  System.SysUtils,
  Lib.Records,
  Lib.Out.Wcrypt2,

  System.Classes;


type
  TEstadoValidacao = (evldInValido = 0, evldValido = 1);

  TFuncoes = class
  public
    class function LerArquivoIni(const AArquivo: string; const ASecao: string;
      const AChave: string; const AValorPadrao: string = ''): Variant; overload;
    class function FormatarDescricaoVersaoExecutavel: string;
    class procedure AbrirFormulario<F: TForm>;

    class function VariavelVazia(const AValor: Variant): Boolean;

    class function InserirAspasDuplas(const AString: string): string;

    class procedure ExibirPropriedades(AClass: TClass);

    class procedure AtribuirValorPropriedade(const AClasse: TClass; const APropriedade: string;
      const AValor: Variant );

    class function RetornarValorPropriedade(const AClasse: TClass; const APropriedade: string): Variant;


    class function MapearCamposPropriedades(AClass: TClass): TMapaCamposPropriedades;
    class procedure ExiibirMapaDeCampos(const AMapaCamposPropriedades: TMapaCamposPropriedades);

    class procedure DefinirEstadoCampo(const ACampo: TWinControl;
      const AEstadoValidacao: TEstadoValidacao);

    class function VerificarEstadoCampo(const ACampo: TWinControl): TEstadoValidacao;

    class function RemoverMascaras(const ATexto: string): Int64;

    class function MD5(const AInput: string): string;


  end;

implementation

{ TFuncoes }

uses CustomAtributes.MapaDB;



class procedure TFuncoes.AbrirFormulario<F>;
var
  Form: F;
begin
  Application.CreateForm( F, Form );
  try
    Form.ShowModal;
  finally
    Form.Release;
  end;

end;



class procedure TFuncoes.ExiibirMapaDeCampos(
  const AMapaCamposPropriedades: TMapaCamposPropriedades);
var
  iIndice: Integer;
  Mapa: string;
begin
  for iIndice := Low(AMapaCamposPropriedades) to High(AMapaCamposPropriedades) do
  begin
    Mapa:= Mapa + 'Campo(' + AMapaCamposPropriedades[iIndice].Campo + ') - Propriedade(' +
      AMapaCamposPropriedades[iIndice].Propriedade + ')' + #13#10;

  end;

  ShowMessage( Mapa )
end;



class function TFuncoes.FormatarDescricaoVersaoExecutavel: string;
begin
  Result:=
    Trim(TVersaoExecutavel.VersaoExecutavel(Application.ExeName));

  if ( Result <> EmptyStr ) then
    Result:= Concat( 'v ', Result)
  else
    Result:= EmptyStr
end;



class function TFuncoes.InserirAspasDuplas(const AString: string): string;
begin
  Result:=
    '"' + AString + '"';


end;

class function TFuncoes.LerArquivoIni(const AArquivo, ASecao, AChave,
  AValorPadrao: string): Variant;
var
  oIniFile: TIniFile;
begin
  if (FileExists( AArquivo )) then
  begin
    oIniFile:= TIniFile.Create( AArquivo );
    try
      Result:= oIniFile.ReadString( ASecao, AChave, AValorPadrao )

    finally
      FreeAndNil(oIniFile);
    end;
  end else
    Result:= AValorPadrao;
end;



class function TFuncoes.MapearCamposPropriedades(
  AClass: TClass): TMapaCamposPropriedades;
var
  oRttiType: TRttiType;
  oRttiProperty: TRttiProperty;
  oRttiContext: TRttiContext;
  oCustomAttribute: TCustomAttribute;
begin
  SetLength(Result, 0);
  oRttiContext:= TRttiContext.Create;
  try
    oRttiType:= oRttiContext.GetType( AClass.ClassInfo );

    for oRttiProperty in oRttiType.GetProperties do
    begin
      for oCustomAttribute in oRttiProperty.GetAttributes do
      begin
        if ( oCustomAttribute is TMapaDB ) then
        begin
           SetLength( Result, Length( Result ) + 1 );

           Result[ Pred( Length( Result )) ].Add(
             ( TMapaDB( oCustomAttribute ).CampoDB ),
             ( oRttiProperty.Name )
           );
        end;
      end;
    end;
  finally
    oRttiContext.Free;
  end;
end;







class function TFuncoes.MD5(const AInput: string): string;
var
  hCryptProvider: HCRYPTPROV;
  hHash: HCRYPTHASH;
  bHash: array[0..$7f] of Byte;
  dwHashLen: DWORD;
  pbContent: PByte;
  i: Integer;
begin
  dwHashLen := 16;
  pbContent := Pointer ( PChar( AInput ));
  Result := '';

  if CryptAcquireContext(@hCryptProvider, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT or CRYPT_MACHINE_KEYSET) then
  begin
    if CryptCreateHash(hCryptProvider, CALG_MD5, 0, 0, @hHash) then
    begin
      if CryptHashData(hHash, pbContent, Length(AInput), 0) then
      begin
        if CryptGetHashParam(hHash, HP_HASHVAL, @bHash[0], @dwHashLen, 0) then
        begin
          for i := 0 to dwHashLen - 1 do
          begin
            Result := Result + Format('%.2x', [bHash[i]]);
          end;
        end;
      end;
      CryptDestroyHash(hHash);
    end;
    CryptReleaseContext(hCryptProvider, 0);
  end;
  Result := AnsiLowerCase(Result);

end;



class function TFuncoes.VariavelVazia(const AValor: Variant): Boolean;
begin
  Result:= True;

//  ShowMessage( VarToStr( AValor ) );

  case ( VarType ( AValor )) of
    varEmpty,varNull:
      Result:= True;

    varSmallint, varInteger, varShortInt, varByte, varWord, varLongWord, varInt64:
      Result:= ( AValor = 0 );

    varSingle, varDouble, varCurrency:
      Result:= ( Avalor = 0.00 );

    varOleStr, varString, varUString:
      Result:= ( AValor = EmptyStr );

    varDate:
      Result:= ( AValor = 0 );

  end;

end;



class function TFuncoes.VerificarEstadoCampo(
  const ACampo: TWinControl): TEstadoValidacao;
begin
  Result:= TEstadoValidacao( 0 );
  if ( TWinControl(ACampo).Enabled ) then
  begin
    Result:= TEstadoValidacao( TWinControl(ACampo).Tag );
  end;

end;

class procedure TFuncoes.AtribuirValorPropriedade(const AClasse: TClass;
  const APropriedade: string; const AValor: Variant);
begin
end;


class procedure TFuncoes.DefinirEstadoCampo(const ACampo: TWinControl;
  const AEstadoValidacao: TEstadoValidacao);
begin
  TWinControl( ACampo ).Tag:= Integer(AEstadoValidacao);
end;



class function TFuncoes.RemoverMascaras(const ATexto: string): Int64;
var
  C: Char;
  Numeros: string;
begin
  Result:= 0;

  Numeros:= EmptyStr;
  for C in ATexto do
    Numeros:= Numeros + C;

  Result:= StrToInt64Def( Numeros, 0 )
end;

class function TFuncoes.RetornarValorPropriedade(const AClasse: TClass;
  const APropriedade: string): Variant;
var
  rttiContexto: TRttiContext;
  rttiTipo: TRttiType;
  rttiPropriedade: TRttiProperty;
begin
  Result:= vaNull;

  rttiContexto:= TRttiContext.Create;
  try
    rttiTipo:= rttiContexto.GetType( AClasse.ClassInfo );

    rttiPropriedade:= rttiTipo.GetProperty( APropriedade );

    if ( rttiPropriedade <> nil ) then
    begin
      Result:= rttiPropriedade.GetValue( AClasse ).AsVariant;
    end;

  finally
    rttiContexto.Free;
  end;


end;


class procedure TFuncoes.ExibirPropriedades(AClass: TClass);
var
  Ctx: TRttiContext;
  Tipo:TRttiType;
  Prop:TRttiProperty;

  Propriedades: string;
begin
  Ctx:=TRttiContext.Create;
  try
    Tipo:=Ctx.GetType(AClass.ClassInfo);

    for prop in Tipo.GetProperties do
      Propriedades:= Prop.Name + #13#10;

    ShowMessage( Propriedades );
  finally
    Ctx.Free;
  end;
end;



end.
