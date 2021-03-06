unit Modelos.Profissao;

interface

uses
  Modelos.Modelo,
  CustomAtributes.MapaDB;

type
  TProfissao = class(TModelo)
  private
    FID: Integer;
    FDescricao: string;

  published
    [TMapaDB('profissoes', 'id_profissao', [atrPesquisa] )]
    property ID: Integer read FID write FID;

    [TMapaDB('profissoes', 'ds_profissao', [] )]
    property Descricao: string read FDescricao write FDescricao;

  end;

implementation

end.
