unit UcadParametros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, RXShell, RXCtrls, ToolEdit, Mask, Db,
  IBCustomDataSet, IBTable, DBCtrls, Gauges, Grids, DBGrids,
  IBSQL, IBQuery, IBStoredProc, ComCtrls, RxCombos, ExtCtrls, RXSpin,
  RxMemDS, RXDBCtrl, IBDatabaseInfo, IBExtract;

type
  TCadParametros = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Gauge1: TGauge;
    ArqX: TLabel;
    Label18: TLabel;
    FilenameEdit1: TFilenameEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DirectoryEdit1: TDirectoryEdit;
    Atualiza: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    IBSQL1: TIBSQL;
    Notas: TIBQuery;
    NotasALUNO: TIntegerField;
    NotasDISCIPLINA: TIntegerField;
    NotasBIMESTRE: TSmallintField;
    NotasNOTA1: TIBBCDField;
    NotasNOTA2: TIBBCDField;
    NotasNOTA3: TIBBCDField;
    NotasNOTA: TIBBCDField;
    NotasRECUPBIM: TIBBCDField;
    IncFaltaA: TIBStoredProc;
    BitBtn1: TBitBtn;
    FS1: TFormStorage;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    Label28: TLabel;
    MudaCor: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    IncDiasLetivos: TIBStoredProc;
    GroupBox1: TGroupBox;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    BitBtn3: TBitBtn;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    Label30: TLabel;
    DBMemo2: TDBMemo;
    Label31: TLabel;
    DBMemo3: TDBMemo;
    Label32: TLabel;
    Panel1: TPanel;
    Dist1: TBitBtn;
    Dist2: TBitBtn;
    Dist3: TBitBtn;
    Label17: TLabel;
    Gauge2: TGauge;
    Panel2: TPanel;
    Label19: TLabel;
    Gauge3: TGauge;
    Reorg1: TBitBtn;
    Reorg2: TBitBtn;
    Reorg3: TBitBtn;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    notasnet: TDBCheckBox;
    Shape5: TShape;
    edtarquivo: TFilenameEdit;
    lbl2: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AtualizaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Dist1Click(Sender: TObject);
    procedure Dist2Click(Sender: TObject);
    procedure Dist3Click(Sender: TObject);
    procedure Reorg1Click(Sender: TObject);
    procedure Reorg2Click(Sender: TObject);
    procedure Reorg3Click(Sender: TObject);
    procedure edtarquivoExit(Sender: TObject);
  private
    procedure Distribui_Alunos(Serie : Integer);
    procedure Reorganiza_Numeros(Serie : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadParametros: TCadParametros;

implementation

uses UDM, UMenu, UDM2;

{$R *.DFM}

procedure TCadParametros.FormShow(Sender: TObject);
begin
  dm2.iqParametros_B.Open;
  FilenameEdit1.Text := DM.ParametrosCAD_ALU_ORIG.AsString;
  DirectoryEdit1.Text := DM.ParametrosDIRETORIO_SCA.AsString;
  CheckBox1.Checked := (DM.ParametrosRECUPBIM1.Value = 'X');
  CheckBox2.Checked := (DM.ParametrosRECUPBIM2.Value = 'X');
  CheckBox3.Checked := (DM.ParametrosRECUPBIM3.Value = 'X');
  Shape2.Brush.Color := DM.ParametrosCOR_ZEBRADO.Value;
  Shape3.Brush.Color := DM.ParametrosCOR_ZEBRADO.Value;
  Shape4.Brush.Color := DM.ParametrosCOR_ZEBRADO.Value;
  PageControl1.ActivePageIndex := 0;
  if (dm.ParametrosSTATUSNOTANET.Value = 'T') Then
     notasnet.Caption := 'Liberar notas da internet.'
     Else
       notasnet.Caption := 'Bloquear notas da internet.';
end;

procedure TCadParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm2.iqParametros_B.Close;
  DM.Parametros.Edit;
  DM.ParametrosCAD_ALU_ORIG.AsString := FilenameEdit1.Text;
  DM.ParametrosDIRETORIO_SCA.AsString := DirectoryEdit1.Text;
 if CheckBox1.Checked then DM.ParametrosRECUPBIM1.Value := 'X'
   else DM.ParametrosRECUPBIM1.Value := ' ';
  if CheckBox2.Checked then DM.ParametrosRECUPBIM2.Value := 'X'
   else DM.ParametrosRECUPBIM2.Value := ' ';
  if CheckBox3.Checked then DM.ParametrosRECUPBIM3.Value := 'X'
   else DM.ParametrosRECUPBIM3.Value := ' ';
  DM.ParametrosCOR_ZEBRADO.Value := Shape2.Brush.Color;
  DM.ParametrosCOR_ZEBRADO.Value := Shape3.Brush.Color;
  DM.ParametrosCOR_ZEBRADO.Value := Shape4.Brush.Color;
  if dm.Parametros.State in [dsEdit, dsInsert] Then
  DM.Parametros.Post;
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TCadParametros.AtualizaClick(Sender: TObject);
//var Cod_X, Ser_X, Dis_X, Sem_X, Aul_X, Alu_X, Bim_X : Integer;
//    Tur_X : String;
begin
  if not (MessageDlg('Atualiza Arquivos?', mtConfirmation, mbOKCancel, 0) = mrOK) then abort;
  Gauge1.Show;  ArqX.Show;
{//=============================================== Atualiza Disciplinas
  DM.Disciplinas.Open;
  Disci.DatabaseName := DirectoryEdit1.Text;
  Disci.Open;  Disci.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Disci.RecordCount;
  ArqX.Caption := 'Disciplinas';
  Application.ProcessMessages;
  while not Disci.Eof do begin
    Cod_X := DisciDIS_COD.AsInteger;
    if DM.Disciplinas.Locate('CODIGO', Cod_X, [loPartialKey]) then begin
      DM.Disciplinas.Edit; end
     else begin
      DM.Disciplinas.Append;
      DM.DisciplinasCODIGO.Value := Cod_X;
    end;
    DM.DisciplinasNOME.Value := DisciDIS_NOME.Value;
    DM.DisciplinasNOME_RES.Value := DisciDIS_RESUM.Value;
    DM.DisciplinasMAX_FALTAS.Value := DisciDIS_MAXFAL.Value;
    DM.Disciplinas.Post;
    Disci.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  DM.Disciplinas.Close;
//=============================================== Atualiza Turma
  DM.Turmas.Open;
  Turma.DatabaseName := DirectoryEdit1.Text;
  Turma.Open;  Turma.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Turma.RecordCount;
  ArqX.Caption := 'Turma';
  Application.ProcessMessages;
  while not Turma.Eof do begin
    Ser_X := TurmaSER_NUMERO.AsInteger;
    Tur_X := TurmaTUR_TURMA.AsString;
    if DM.Turmas.Locate('SERIE;TURMA', VarArrayOf([Ser_X,Tur_X]), [loPartialKey]) then begin
      DM.Turmas.Edit; end
     else begin
      DM.Turmas.Append;
      DM.TurmasSERIE.Value := Ser_X;
      DM.TurmasTURMA.Value := Tur_X;
    end;
    if TurmaTUR_PERIOD.Value = 'M' then DM.TurmasPERIODO.Value := 1;
    if TurmaTUR_PERIOD.Value = 'V' then DM.TurmasPERIODO.Value := 2;
    if TurmaTUR_PERIOD.Value = 'N' then DM.TurmasPERIODO.Value := 3;
    DM.TurmasVAGAS.Value := TurmaTUR_VAGAS.Value;
    DM.Turmas.Post;
    Turma.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  DM.Turmas.Close;
//=============================================== Atualiza Grade
  DM.Grade.Open;
  Grade.DatabaseName := DirectoryEdit1.Text;
  Grade.Open;  Grade.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Grade.RecordCount;
  ArqX.Caption := 'Grade';
  Application.ProcessMessages;
  while not Grade.Eof do begin
    Ser_X := GradeSER_NUMERO.AsInteger;
    Dis_X := GradeDIS_COD.AsInteger;
    if DM.Grade.Locate('SERIE;DISCIPLINA', VarArrayOf([Ser_X,Dis_X]), [loPartialKey]) then begin
      DM.Grade.Edit; end
     else begin
      DM.Grade.Append;
      DM.GradeSERIE.Value := Ser_X;
      DM.GradeDISCIPLINA.Value := Dis_X;
    end;
    DM.GradeSEQUENCIA.Value := GradeGRA_SEQ.Value;
    DM.GradeCH_SEMANAL.Value := GradeGRA_CHSEM.Value;
    DM.GradeCH_OFICIAL.Value := GradeGRA_CHOF.Value;
    DM.GradeCH_N_OFICIAL.Value := GradeGRA_CHNO.Value;
    DM.GradeTIPO.Value := GradeGRA_TIPO.Value;
    DM.Grade.Post;
    Grade.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  DM.Grade.Close;
//=============================================== Atualiza Mapa
  DM.Mapa.Open;
  Mapa.DatabaseName := DirectoryEdit1.Text;
  Mapa.Open;  Mapa.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Mapa.RecordCount;
  ArqX.Caption := 'Mapa';
  Application.ProcessMessages;
  while not Mapa.Eof do begin
    Ser_X := MapaSER_NUMERO.AsInteger;
    Tur_X := MapaTUR_TURMA.AsString;
    Sem_X := MapaMAP_DIASEM.AsInteger;
    Aul_X := MapaMAP_AULA.AsInteger;
    if DM.Mapa.Locate('TUR_SERIE;TUR_TURMA;DIA_SEMANA;AULA',
               VarArrayOf([Ser_X,Tur_X,Sem_X,Aul_X]), [loPartialKey]) then begin
      DM.Mapa.Edit; end
     else begin
      DM.Mapa.Append;
      DM.MapaTUR_SERIE.Value := Ser_X;
      DM.MapaTUR_TURMA.Value := Tur_X;
      DM.MapaDIA_SEMANA.Value := Sem_X;
      DM.MapaAULA.Value := Aul_X;
    end;
    DM.MapaDIS_CODIGO.Value := MapaDIS_COD.Value;
    DM.Mapa.Post;
    Mapa.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  DM.Mapa.Close;
//=============================================== Atualiza Notas
  Nota.DatabaseName := DirectoryEdit1.Text;
  Nota.Open;  Nota.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Nota.RecordCount;
  ArqX.Caption := 'Notas';
  Application.ProcessMessages;
  while not Nota.Eof do begin
    Alu_X := NotaALU_COD.AsInteger;
    Dis_X := NotaDIS_COD.AsInteger;
    if NotaBIM_NUMERO.Value = 'R' then Bim_X := 5
     else Bim_X := NotaBIM_NUMERO.AsInteger;
    Notas.Close;
    Notas.ParamByName('aluno').Value := Alu_X;
    Notas.ParamByName('disciplina').Value := Dis_X;
    Notas.ParamByName('bimestre').Value := Bim_X;
    Notas.Open;
    if NotasALUNO.IsNull then begin
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('insert into NOTAS (ALUNO,DISCIPLINA,BIMESTRE,NOTA,NOTA1)');
      IBSQL1.SQL.Add('values (:aluno,:disciplina,:bimestre,:nota,:nota)');
      end
     else begin
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('update NOTAS');
      IBSQL1.SQL.Add('set NOTA = :nota, NOTA1 = :nota');
      IBSQL1.SQL.Add('where ALUNO = :aluno and DISCIPLINA = :disciplina');
      IBSQL1.SQL.Add('   and BIMESTRE = :bimestre');
    end;
    IBSQL1.ParamByName('aluno').Value := Alu_X;
    IBSQL1.ParamByName('disciplina').Value := Dis_X;
    IBSQL1.ParamByName('bimestre').Value := Bim_X;
    IBSQL1.ParamByName('nota').Value := NotaNOT_NOTA.Value;
    try IBSQL1.ExecQuery; except end;
    Nota.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  Notas.Close;
//=============================================== Atualiza Notas Recup.Bim
  Recup.DatabaseName := DirectoryEdit1.Text;
  Recup.Open;  Recup.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Recup.RecordCount;
  ArqX.Caption := 'Recup.Bim.';
  Application.ProcessMessages;
  while not Recup.Eof do begin
    Alu_X := RecupALU_COD.AsInteger;
    Dis_X := RecupDIS_COD.AsInteger;
    if RecupBIM_NUMERO.Value = 'R' then Bim_X := 5
     else Bim_X := RecupBIM_NUMERO.AsInteger;
    Notas.Close;
    Notas.ParamByName('aluno').Value := Alu_X;
    Notas.ParamByName('disciplina').Value := Dis_X;
    Notas.ParamByName('bimestre').Value := Bim_X;
    Notas.Open;
    if NotasALUNO.IsNull then begin
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('insert into NOTAS (ALUNO,DISCIPLINA,BIMESTRE,RECUPBIM)');
      IBSQL1.SQL.Add('values (:aluno,:disciplina,:bimestre,:recupbim)');
      end
     else begin
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('update NOTAS');
      IBSQL1.SQL.Add('set RECUPBIM = :recupbim');
      IBSQL1.SQL.Add('where ALUNO = :aluno and DISCIPLINA = :disciplina');
      IBSQL1.SQL.Add('   and BIMESTRE = :bimestre');
    end;
    IBSQL1.ParamByName('aluno').Value := Alu_X;
    IBSQL1.ParamByName('disciplina').Value := Dis_X;
    IBSQL1.ParamByName('bimestre').Value := Bim_X;
    IBSQL1.ParamByName('recupbim').Value := RecupNOT_NOTA.Value;
    try IBSQL1.ExecQuery; except end;
    Recup.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  Notas.Close;
//=============================================== Atualiza Faltas
  ArqX.Caption := 'Limpando Dias Letivos!';
  Application.ProcessMessages;
  IBSQL1.SQL.Clear;
  IBSQL1.SQL.Add('delete from AULAS_DADAS');
  IBSQL1.ExecQuery;
  DM.IBTr_ANGLO.CommitRetaining;
  IBSQL1.SQL.Clear;
  IBSQL1.SQL.Add('delete from DIAS_LETIVOS');
  IBSQL1.ExecQuery;
  DM.IBTr_ANGLO.CommitRetaining;
  ArqX.Caption := 'Limpando Faltas!';
  Application.ProcessMessages;
  IBSQL1.SQL.Clear;
  IBSQL1.SQL.Add('delete from FALTAS');
  IBSQL1.ExecQuery;
  DM.IBTr_ANGLO.CommitRetaining;

  DiasLetivos.DatabaseName := DirectoryEdit1.Text;
  DiasLetivos.Open;  DiasLetivos.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := DiasLetivos.RecordCount;
  ArqX.Caption := 'Atualizando Dias Letivos';
  Application.ProcessMessages;
  while not DiasLetivos.Eof do begin
    IncDiasLetivos.ParamByName('data').Value := DiasLetivosLET_DATA.Value;
    try
      IncDiasLetivos.ExecProc;
     except
    end;
    DiasLetivos.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  DiasLetivos.Close;
  DM.IBTr_ANGLO.CommitRetaining;

  Faltas.DatabaseName := DirectoryEdit1.Text;
  Faltas.Open;  Faltas.First;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := Faltas.RecordCount;
  ArqX.Caption := 'Atualizando Faltas';
  Application.ProcessMessages;
  while not Faltas.Eof do begin
    IncFaltaA.ParamByName('aluno').Value := FaltasALU_COD.Value;
    IncFaltaA.ParamByName('disciplina').Value := FaltasDIS_COD.Value;
    IncFaltaA.ParamByName('dia').Value := FaltasFAL_DATA.Value;
    IncFaltaA.ParamByName('qtdade').Value := FaltasFAL_QTDE.Value;
    try
      IncFaltaA.ExecProc;
     except
    end;
    Faltas.Next;
    Gauge1.Progress := Gauge1.Progress + 1;
  end;
  Faltas.Close;         }

  ArqX.Caption := 'Terminado!!!';
  Gauge1.Hide;  ArqX.Hide;
  DM.IBTr_Anglo.CommitRetaining;
end;

procedure TCadParametros.BitBtn2Click(Sender: TObject);
begin
{  Speak.PlaySound(DM.ParametrosSOM_OK_FREQUENCIA.Value,
        DM.ParametrosSOM_OK_DURACAO.Value);}
end;

procedure TCadParametros.BitBtn3Click(Sender: TObject);
begin
{  Speak.PlaySound(DM.ParametrosSOM_ERRO_FREQUENCIA.Value,
        DM.ParametrosSOM_ERRO_DURACAO.Value);}
end;

procedure TCadParametros.Dist1Click(Sender: TObject);
begin
  Distribui_Alunos(1);
end;

procedure TCadParametros.Dist2Click(Sender: TObject);
begin
  Distribui_Alunos(2);
end;

procedure TCadParametros.Dist3Click(Sender: TObject);
begin
  Distribui_Alunos(3);
end;

procedure TCadParametros.Distribui_Alunos(Serie : Integer);
var SerX : string;
begin
  SerX := IntToStr(Serie);
  if MessageDlg('Distribui da '+SerX+'? S?rie nas turmas?',mtConfirmation,mbOKCancel,0) = mrOK then begin
    DM.Alunos.SelectSQL.Strings[2] := 'where serie = '+SerX;
    DM.Alunos.SelectSQL.Strings[3] := 'order by NOME'; //seleciona os alunos conforme a serie
    DM.Alunos.Open;
    DM.Alunos.FetchAll;
    DM.Alunos.First;      //vai para o promeiro aluno
    Gauge2.MaxValue := DM.Alunos.RecordCount;
    Gauge2.Progress := 0;
    Gauge2.Show;
    DM.Turmas.SelectSQL.Strings[2] := 'where serie = '+SerX+' order by TURMA'; //seleciona as turmas da serie em que est? distribuindo
    DM.Turmas.Open;
    while not DM.Turmas.Eof do begin    //enquanto n?o teminar a tabela de turmas
      DM.Turmas.Edit;
      DM.turmasNUMERO.Value := 1;
      DM.Turmas.Post;
      DM.Turmas.Next;
    end;
    DM.Turmas.First;
    while not DM.Alunos.Eof do begin
      DM.Alunos.Edit;
      DM.AlunosTURMA.Value := DM.TurmasTURMA.Value;
      DM.AlunosCHAMADA.Value := DM.TurmasNUMERO.Value;
      DM.Alunos.Post;
      DM.Turmas.Edit;
      DM.TurmasNUMERO.Value := DM.TurmasNUMERO.Value + 1;
      DM.Turmas.Post;
      DM.Turmas.Next;
      if DM.Turmas.Eof then DM.Turmas.First;
      DM.Alunos.Next;
      Gauge2.Progress := Gauge2.Progress + 1;
    end;
    DM.Alunos.Close;
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
    DM.Alunos.SelectSQL.Strings[3] := 'order by Codigo';
    DM.Turmas.Close;
    DM.Turmas.SelectSQL.Strings[2] := 'order by SERIE,TURMA';
    DM.IBTr_ANGLO.CommitRetaining;
    Gauge2.Hide;
    ShowMessage('Alunos da '+SerX+'? S?rie distribu?dos!');
  end;
end;

procedure TCadParametros.Reorg1Click(Sender: TObject);
begin
  Reorganiza_Numeros(1);
end;

procedure TCadParametros.Reorg2Click(Sender: TObject);
begin
  Reorganiza_Numeros(2);
end;

procedure TCadParametros.Reorg3Click(Sender: TObject);
begin
  Reorganiza_Numeros(3);
end;

procedure TCadParametros.Reorganiza_Numeros(Serie : Integer);
var SerX : string;
    TurX : string;
    Num : integer;
begin
  SerX := IntToStr(Serie);
  TurX := ' ';
  Num := 0;
  if MessageDlg('Reorganiza N?meros da '+SerX+'? S?rie ?',mtConfirmation,mbOKCancel,0) = mrOK then begin
    DM.Alunos.SelectSQL.Strings[2] := 'where SERIE = '+SerX+
           ' and DATA_MATRICULA <= :fim_matricula';
    DM.Alunos.SelectSQL.Strings[3] := 'order by TURMA,NOME';
    DM.Alunos.ParamByName('fim_matricula').Value := DM.ParametrosFIM_MATRICULAS.Value;
    DM.Alunos.Open;
    DM.Alunos.FetchAll;
    DM.Alunos.First;
    Gauge3.MaxValue := DM.Alunos.RecordCount;
    Gauge3.Progress := 0;
    Gauge3.Show;
    while not DM.Alunos.Eof do begin
      if DM.AlunosTURMA.Value <> TurX then begin
        TurX := DM.AlunosTURMA.Value;
        Num := 1;
      end;
      DM.Alunos.Edit;
      DM.AlunosCHAMADA.Value := Num;
      DM.Alunos.Post;
      inc(Num);
      DM.Alunos.Next;
      Gauge3.Progress := Gauge3.Progress + 1;
    end;
    DM.Alunos.Close;
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
    DM.Alunos.SelectSQL.Strings[3] := 'order by Codigo';
    DM.IBTr_ANGLO.CommitRetaining;
    Gauge3.Hide;
    ShowMessage('N?meros dos alunos da '+SerX+'? S?rie reorganizados!');
  end;
end;

procedure TCadParametros.edtarquivoExit(Sender: TObject);
begin
  dm.Parametros.Open;
  dm.Parametros.Edit;
  dm.ParametrosCAMINHO.Value := edtarquivo.Text;
  dm.Parametros.Post;
end;

end.

