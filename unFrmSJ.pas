unit unFrmSJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset, DB, NxEdit, PBNumEdit, cxMaskEdit, cxSpinEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ZAbstractRODataset;

type
  TFrmSJ = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    NxTextColumn4: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    NxEdit2: TNxEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    NxTextColumn7: TNxTextColumn;
    cxLabel4: TcxLabel;
    btnCariSPMB: TButton;
    NxNumberColumn2: TNxNumberColumn;
    cxLUCust: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxLabel5: TcxLabel;
    cxLUSPMB: TcxLookupComboBox;
    zqrNoSPMB: TZReadOnlyQuery;
    dsNoSPMB: TDataSource;
    cxLabel9: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxtDriver: TcxTextEdit;
    cxLabel10: TcxLabel;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    Label2: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxtNoSPMB: TcxTextEdit;
    cxtNamaCust: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxtPO: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtSC: TcxTextEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnCariSPMBClick(Sender: TObject);
    procedure cxLUCustPropertiesChange(Sender: TObject);
    procedure cxLUSPMBPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    mUserDept: string;
    mNoSJ: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    property NoSJ: string read mNoSJ write mNoSJ;
  end;

var
  frmSJ: TFrmSJ;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSPMB, unFrmLapUmum;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : Integer = 3;
  CQTY : integer = 4;
  CQTY_SO : Integer = 5;
  CQTY_KIRIM : Integer = 6;
  CKET : Integer = 7;
  CHAPUS: integer = 8;
  CPO : Integer = 9;
  CSC : Integer = 10;

{$R *.dfm}

procedure TFrmSJ.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  {
  inherited;
  btnCariPO.Visible := False;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // collect gudang
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;


  cxtNoTrans.Text := GetLastFak('sj');

  cxlNoBukti.Visible := Aplikasi.EditTrans;
  btnEdit2.Visible := aplikasi.EditTrans;
  }
end;

procedure TFrmSJ.btnBaruClick(Sender: TObject);
begin
  inherited;
  Self.Jenis := 'tambah';
end;

function TFrmSJ.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[1,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmSJ.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  fs: TfrmCariSPMB;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qb: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
    fs := TFrmCariSPMB.Create(self);
    //fs.fSPMB := Self;
    fs.KodeCust := zqrCust.FieldByName('kode').AsString;
    fs.ShowModal;
    if fs.ModalResult = idOk then begin

      q := OpenRS('SELECT * FROM tmp_spmb WHERE no_bukti = ''%s'' ' +
        'AND kode_brg = %s',
        [fs.NoSO, fs.KodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang dengan nomer SO tersebut sudah ada.');
        q.Close;
        Abort;
      end;
      q.Close;

      q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
        ' AND kode_brg = ''%s''',
        [fs.NoSO, fs.KodeBrg]);
      if not q.IsEmpty then begin

        qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [q.FIeldByName('kode_brg').AsString]);
        nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
        nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
        qb.Close;
        nxGrd.Cell[CQTY_SO,ARow].AsString := q.FieldByName('qty').AsString;

        {
        mTblTmp.Insert;
        mTblTmp.FieldByName('no_bukti').AsString := nxGrd.Cell[CNOSO,ARow].AsString;
        mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ARow].AsString;
        mTblTmp.Post;
        }

        q.Next;
      end;
      fs.Release;
    end;
  end;
end;

procedure TFrmSJ.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = CQTY then begin

    //if nxGrd.Cell[CQTY,ARow].AsInteger < 1 then begin
    //  nxGrd.Cell[CQTY,ARow].AsInteger := 1;
    //end;
    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(1,nxGrd.RowCount-1)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;

    end;
  end;
end;

procedure TFrmSJ.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[CQTY,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
  if cxsTotalQty.Value = 0 then
    cxCmbGdg.Properties.ReadOnly := False;
end;

procedure TFrmSJ.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  btnCariPO.Visible := False;
  cxtNoTrans.Text := GetLastFak('sj');
  cxLUCust.Text := '';
  cxLUSPMB.Text := '';
  cxCmbGdg.Text := '';
  cxtNopol.Text := '';
  cxtDriver.Text := '';
  zqrCust.Close;
  cxLUCust.EditValue := '';
  zqrCust.Open;
  zqrNoSPMB.Close;
end;

procedure TFrmSJ.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmSJ.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TFrmSJ.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
  f: TFrmLapUmum;
begin
  {
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if cxLUCust.Text = '' then begin
    MsgBox('Customer harus diisi.');
    cxLUCust.SetFocus;
  end
  else if cxLUSPMB.Text = '' then begin
    MsgBox('No. SPMB harus diisi.');
    cxLUSPMB.SetFocus;
  end
  else begin

    //cek stok barang di gudang
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[CKD_BRG,i].AsString <> '') then begin
        if CekStok(nxGrd.Cell[CKD_BRG,i].AsString, 'G02') <= 0 then begin
          MsgBox('Stok barang ' + nxGrd.Cell[CKD_BRG,i].AsString +
            ' di gudang G02 tidak mencukupi.');
          nxGrd.SelectCell(CQTY, i);
          nxGrd.SetFocus;
          Abort;
        end;
      end;
    end;

    //cek qty kirim
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[CKD_BRG,i].AsString <> '') then begin
        q := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' AND kode_brg = %s',
          [nxGrd.Cell[CNOSO,i].AsString, nxGrd.Cell[CKD_BRG,i].AsString]);
        if not q.IsEmpty then begin
          if nxGrd.Cell[CQTY,i].AsFloat > (q.FieldByName('qty_so').AsFloat - q.FieldByName('qty_kirim').AsFloat) then begin
            MsgBox('Jumlah QTY Surat jalan melebihi seharusnya.');
            nxGrd.SetFocus;
            nxGrd.SelectCell(CQTY, i);
            q.Close;
            Abort;
          end;
        end;
        q.Close;
      end;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else
        sNoTrs := GetLastFak('sj');

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        barang := OpenTbl('tbl_barang');
        barang_det := OpenTbl('tbl_barang_det');
        q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin
          if barang.Locate('kode', q.FieldByname('kode_brg').AsInteger,[]) then begin
            barang.Edit;
            barang.FieldByName('stok').AsFloat :=
              barang.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
            barang.Post;
          end;
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([
              q.FieldByName('kode_brg').AsInteger,
              q.FieldByName('kode_gdg').AsString
            ]),[]) then begin
            barang_det.Edit;
            barang_det.FieldByName('stok').AsFloat :=
              barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
            barang_det.Post;
          end;
          q.Next;
        end;
        q.Close;
        barang.Close;
        barang_det.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_sj_head');
      in_det := OpenTbl('tbl_sj_det');
      barang := OpenTbl('tbl_barang');
      barang_det := OpenTbl('tbl_barang_det');
      hist := OpenTbl('tbl_history');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_spmb').AsString := cxLUSPMB.Text;
      in_head.FieldByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[1,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('qty_so').AsFloat := nxGrd.Cell[CQTY_SO,i].AsFloat;
        in_det.FieldByName('no_so').AsString := nxGrd.Cell[CNOSO,i].AsString;
        in_det.FieldByName('kode_gdg').AsString := 'G02';
        in_det.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[CKET,i].AsString);
        in_det.FieldByName('po#').AsString := nxGrd.Cell[CPO,i].AsString;
        in_det.FieldByName('sc#').AsString := nxGrd.Cell[CSC,i].AsString;

        in_det.Post;

        // update stok
        if barang.Locate('kode', nxGrd.Cell[CKD_BRG,i].AsInteger,[]) then begin
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang.Post;
        end;

        // update detail barang
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsInteger, 'G02']),[]) then
          barang_det.Edit
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := 'G02';
        end;

        barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
        barang_det.Post;

        hist.Insert;
        hist.FieldByName('no_bukti').AsString := sNoTrs;
        hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        hist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        hist.FieldByName('tipe').AsString := 'OUT_';
        hist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        hist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        hist.FieldByName('gudang').AsString := 'G02';
        hist.FieldByName('referensi').AsString := '';
        hist.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[CKET,i].AsString);
        hist.FieldByName('user').AsString := Aplikasi.NamaUser;
        hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        hist.FieldByName('no_so').AsString := nxGrd.Cell[CNOSO,i].AsString;
        hist.FieldByName('no_spk').AsString := '';
        hist.FieldByName('no_spmb').AsString := '';
        hist.FieldByName('no_ccr').AsString := '';
        hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        hist.Post;

        q := OpenRS('SELECT a.no_bukti, a.qty, SUM(b.qty) qty_kirim ' +
          'FROM tbl_so_det a, tbl_sj_det b ' +
          'WHERE a.no_bukti = b.no_so AND a.no_bukti = ''%s'' and a.kode_brg = %s ' +
          'GROUP BY a.no_bukti, a.qty',
          [nxGrd.Cell[CNOSO,i].AsString, nxGrd.Cell[CKD_BRG,i].AsString]);
        if q.FieldByName('qty').AsFloat = q.FieldByName('qty_kirim').AsFloat then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_det SET f_completed = 1 ' +
            'WHERE no_bukti = ''' + nxGrd.Cell[CNOSO,i].AsString + ''' AND ' +
            'kode_brg = ' + nxGrd.Cell[CKD_BRG,i].AsString);
        end;
        q.Close;

        q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
          'AND (f_completed IS NULL OR f_completed = 0)',
          [nxGrd.Cell[CNOSO,i].AsString]);
        if q.IsEmpty then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 ' +
            'WHERE no_bukti = ''' + nxGrd.Cell[CNOSO,i].AsString + '''');
        end;
        q.Close;

        dm.zConn.ExecuteDirect(
          Format('UPDATE tbl_spmb_det SET f_completed = 1 WHERE no_bukti = ''%s'' ' +
          ' AND kode_brg = ''%s''',
          [cxLUSpmb.Text, nxGrd.Cell[CKD_BRG,i].AsString])
        );

      end;

      // cek apakah spmb sudah selesai semua
      q := OpenRS('SELECT * FROM tbl_spmb_det WHERE f_completed = 0 ' +
        'AND no_bukti = ''%s''',
        [cxLUSPMB.Text]);
      if q.IsEmpty then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head SET f_completed = 1 ' +
          'WHERE no_bukti = ''' + cxLUSPMB.Text + '''');
      end;
      q.Close;

      in_head.Close;
      in_det.Close;
      barang.Close;
      barang_det.Close;
      hist.Close;

      if Self.Jenis <> 'edit' then
        UpdateFaktur(Copy(sNoTrs,1,7));

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Surat Jalan sudah disimpan dengan nomer: ' + sNoTrs);
      i := unTools.QBox(Self,'Cetak Surat Jalan ?','Cetak SJ');
      if i = IDYES then begin
        f := TfrmLapUmum.Create(Self);
        f.zqrSJ.Close;
        f.zqrSJ.SQL.Add('WHERE no_bukti = ''' + sNoTrs + '''');
        f.zqrSJ.Open;
        f.rptSJ.ShowReport(True);
        f.Release;
        dm.zConn.ExecuteDirect('UPDATE tbl_sj_head SET f_cetak = 1 WHERE ' +
          'no_bukti = ''' + sNoTrs + '''');
      end;
      btnBatalClick(nil);
      inherited;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;
  }
end;

procedure TFrmSJ.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[1, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      self.NxEdit1DblClick(nil);
    end;
  end;
end;

procedure TFrmSJ.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  if cxtNOTrans.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('no_pb').IsNull then begin
        i := QBox(Self, 'Hapus PO Nomer: ' + cxtNOTrans.Text,'Hapus PO');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_head WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan PO berhasil.');
            btnBatalClick(nil);
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
      end
      else begin
        MsgBox('PO ini sudah diterima, tidak bisa dihapus.');
      end;
    end;
  end;
end;

procedure TFrmSJ.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TFrmSJ.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  MsgBox('Kode Barang sudah ada.');
  //  cxLUBrg.Text := '';
  //end
  //else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  //end;
end;

procedure TFrmSJ.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TFrmSJ.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmSJ.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;
  
  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxCmbGdg.Text := q.FieldByName('kode_gdg').AsString;
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    qBrg.Close;
    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;
    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
end;

procedure TFrmSJ.btnCariSPMBClick(Sender: TObject);
var
  f: TfrmCari;
  fld: TField;
  sList: TStringList;
  q, q2: TZQuery;
  i: Integer;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'spmb';
  f.ShowModal;

  if f.ModalResult = idOk then begin
    sList := f.Result;
    fld := TField(sList.Objects[0]);

    cxtNOSPMB.Text := fld.AsString;

    // head
    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [cxtNOSPMB.Text]);
    q.Close;

    // detail
    q := OpenRS('SELECT * FROM tbl_spmb_det WHERE no_bukti = ''%s''',
      [cxtNOSPMB.Text]);
    i := 0;
    while not q.Eof do begin
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CNM_BRG,i].AsString := q2.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CQTY_SO,i].AsFloat := q.FieldByName('qty_so').AsFloat;
      q2.Close;
      Inc(i);
      nxGrd.AddRow();
      q.Next;
    end;

    HitungTotal;
    q.Close;
  end;
end;

procedure TFrmSJ.cxLUCustPropertiesChange(Sender: TObject);
begin
  try
    with zqrNoSPMB do begin
      cxLUSPMB.EditValue := '';
      if Active then Close;
      ParamByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
      Open;
      nxGrd.ClearRows();
      if IsEmpty then begin
        MsgBox('SPMB untuk customer ini belum ada.');
      end;
    end;
  except
  end;
end;

procedure TFrmSJ.cxLUSPMBPropertiesChange(Sender: TObject);
var
  q, q2, qk: TZQuery;
  i: integer;
begin
  {
  try
    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [zqrNoSPMB.FieldByName('no_bukti').AsString]);
    cxtNopol.Text := q.FieldByName('nopol').AsString;
    cxtDriver.Text := q.FieldByName('driver').AsString;
    q.Close;

    // detail
    q := OpenRS('SELECT * FROM v_spmb_det WHERE no_bukti = ''%s'' ' +
      'AND kode_customer = ''%s''',
      [zqrNoSPMB.FieldByName('no_bukti').AsString,
       zqrCust.FieldByName('kode').AsString
      ]);
    nxGrd.ClearRows;
    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CNM_BRG,i].AsString := q2.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[CQTY_SO,i].AsFloat := q.FieldByName('qty_so').AsFloat;
      nxGrd.Cell[CNOSO,i].AsString := q.FieldByName('no_so').AsString;
      nxGrd.Cell[CPO,i].AsString := q.FieldByName('po#').AsString;
      nxGrd.Cell[CSC,i].AsString := q.FieldByName('sc#').AsString;

      qk := OpenRS('SELECT SUM(qty) AS qty_kirim FROM tbl_sj_det WHERE no_so = ''%s''',
        [q.FieldByName('no_so').AsString]);
      nxGrd.Cell[CQTY_KIRIM,i].AsFloat := qk.FieldByName('qty_kirim').AsFloat;
      qk.Close;

      nxGrd.Cell[CQTY,i].AsFloat := nxGrd.Cell[CQTY_SO,i].AsFloat -
        nxGrd.Cell[CQTY_KIRIM,i].AsFloat;

      q2.Close;
      q.Next;
    end;

    HitungTotal;
    q.Close;
  except
  end;
  }
end;

procedure TFrmSJ.FormShow(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  try
    q := OpenRS('SELECT * FROM v_sj_head WHERE no_bukti = ''%s''',
      [mNoSJ]);
    cxtNoTrans.Text := mNoSJ;
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    cxtNamaCust.Text := q.FieldByName('nama').AsString;
    cxtNoSPMB.Text := q.FieldByName('no_spmb').AsString;
    cxtNoSO.Text := q.FieldByName('no_so').AsString;
    cxtNopol.Text := q.FieldByName('nopol').AsString;
    cxtDriver.Text := q.FieldByName('driver').AsString;
    //cxtPO.Text := q.FieldByName('po#').AsString;
    //cxtSC.Text := q.FieldByName('sc#').AsString;
    q.Close;

    nxGrd.ClearRows;
    q := OpenRS('SELECT * FROM v_sj_det WHERE no_bukti = ''%s''',
      [mNoSJ]);
    while not q.Eof do begin
      i := nxGrd.AddRow();
      with nxGrd do begin
        Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
        Cell[CNM_BRG,i].AsString := q.FieldByName('deskripsi').AsString;
        Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
        Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
        Cell[CQTY_SO,i].AsFloat := q.FieldByName('qty').AsFloat;

      end;
      q.Next;
    end;
    q.Close;

    HitungTotal;
  except
  end;

end;

procedure TFrmSJ.Button1Click(Sender: TObject);
var
  f: TFrmLapUmum;
begin
  f := TfrmLapUmum.Create(Self);
  f.zqrSJ.Close;
  f.zqrSJ.SQL.Add('WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
  f.zqrSJ.Open;
  f.rptSJ.ShowReport(True);
  f.Release;
  dm.zConn.ExecuteDirect('UPDATE tbl_sj_head SET f_cetak = 1 WHERE ' +
    'no_bukti = ''' + cxtNoTrans.Text + '''');
  Close;
end;

end.
