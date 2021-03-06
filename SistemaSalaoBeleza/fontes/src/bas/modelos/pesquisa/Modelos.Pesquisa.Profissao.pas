unit Modelos.Pesquisa.Profissao;

interface

uses
  Modelos.Pesquisa.IInterface,
  Modelos.Pesquisa.Tela,
  Vcl.Controls,
  System.SysUtils,
  Vcl.StdCtrls,
  Lib.Funcoes;

type
  TPesquisaProfissao = class( TInterfacedObject, IBuscaCampo )
  public
    function Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;

  end;

implementation

{ TPesquisaCliente }

function TPesquisaProfissao.Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;
var
  FrmTelaPesquisa: TFrmTelaPesquisa;
begin
  Result:= False;
  FrmTelaPesquisa:= TFrmTelaPesquisa.Create( AControle.Owner );
  try
    FrmTelaPesquisa.Caption:= 'Pesquisa profiss�es';
    FrmTelaPesquisa.AdvEdit1.LabelCaption:= 'Profiss�o';

    FrmTelaPesquisa.ComandoSQL:=
      ' select ' + TFuncoes.InserirAspasDuplas('id_profissao') + ', ' +
                   TFuncoes.InserirAspasDuplas('ds_profissao') +
      '   from ' + TFuncoes.InserirAspasDuplas('profissoes') +
      '  where ' + TFuncoes.InserirAspasDuplas('dt_exclusao') + ' is null ';

    with FrmTelaPesquisa do
    begin
      AdicionaMapaCampos( 'id_profissao', 'C�digo', 70 );
      AdicionaMapaCampos( 'ds_profissao', 'Profiss�o', 350  );
    end;
    FrmTelaPesquisa.Preparar;

    FrmTelaPesquisa.DefinirTamanho( 375, 500  );

    FrmTelaPesquisa.CampoLocate:= 'ds_profissao';

    FrmTelaPesquisa.ShowModal;
    if (FrmTelaPesquisa.ModalResult = mrOk) then
    begin
      ARetorno:= FrmTelaPesquisa.ClientDataSet1.Fields[0].Value;

      Result:= True;
    end;
  finally
    FreeAndNil(FrmTelaPesquisa);
  end;
end;

end.
