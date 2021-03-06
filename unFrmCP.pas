unit unFrmCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, cxLabel,
  cxCheckBox, cxSpinEdit, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxGroupBox, cxPC,
  StdCtrls, ExtCtrls, cxMemo, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid, cxCalendar,Jpeg,
  cxHyperLinkEdit,ShellAPI;

type
  TfrmCP = class(TfrmTplTrans)
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    ScrollBox1: TScrollBox;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label63: TLabel;
    cxtKode: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxlCustomer: TcxLookupComboBox;
    cxtFungsi: TcxTextEdit;
    cxCmbBase: TcxComboBox;
    cxtSheet: TcxComboBox;
    cxsBeratJenis: TcxSpinEdit;
    cxChkAktif: TcxCheckBox;
    cxlKelompok: TcxLookupComboBox;
    cxlSubKelompok: TcxLookupComboBox;
    cxtSubKelompok: TcxTextEdit;
    cxtKelompok: TcxTextEdit;
    btnGenerateKode: TButton;
    cxLabel121: TcxLabel;
    cxlUnitKTG: TcxLookupComboBox;
    cxlIS: TcxLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label65: TLabel;
    Label72: TLabel;
    cxsTebal: TcxSpinEdit;
    cxsBeratKotor: TcxSpinEdit;
    cxsBeratBersih: TcxSpinEdit;
    cxsBeratMeter: TcxSpinEdit;
    cxsBeratJadi: TcxSpinEdit;
    cxsLebarBuka: TcxSpinEdit;
    cxsLebarJadi: TcxSpinEdit;
    cxsPanjang: TcxSpinEdit;
    cxsPanjangJadi: TcxSpinEdit;
    cxsLebarTube: TcxSpinEdit;
    cxsPanjangPlong: TcxSpinEdit;
    cxsLebarPlong: TcxSpinEdit;
    cxsTopFlod: TcxSpinEdit;
    cxsGusset: TcxSpinEdit;
    cxsLebarHandle: TcxSpinEdit;
    cxCmbBentuk: TcxComboBox;
    cxsTinggiTotal: TcxSpinEdit;
    btnHitungBerat: TButton;
    cxsLine: TcxSpinEdit;
    cxsStandar: TcxSpinEdit;
    cxtttebal: TcxTextEdit;
    cxttbk: TcxTextEdit;
    cxttbb: TcxTextEdit;
    cxttberatmeter: TcxTextEdit;
    cxttfg: TcxTextEdit;
    cxttlb: TcxTextEdit;
    cxttlj: TcxTextEdit;
    cxttpt: TcxTextEdit;
    cxttpj: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cxtBentukProduk: TcxTextEdit;
    cxtDesainPrinting: TcxTextEdit;
    cxtWarnaFilm: TcxTextEdit;
    cxtVisualProperty: TcxTextEdit;
    cxtSurfaceProperty: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    cxsMinTSTD: TcxSpinEdit;
    cxsMaxTSTD: TcxSpinEdit;
    cxsMinTSMD: TcxSpinEdit;
    cxsMaxTSMD: TcxSpinEdit;
    cxsMinTETD: TcxSpinEdit;
    cxsMaxTETD: TcxSpinEdit;
    cxsMinTEMD: TcxSpinEdit;
    cxsMaxTEMD: TcxSpinEdit;
    cxsMinTearTD: TcxSpinEdit;
    cxsMaxTearTD: TcxSpinEdit;
    cxsMinTearMD: TcxSpinEdit;
    cxsMaxTearMD: TcxSpinEdit;
    cxsMinPuncture: TcxSpinEdit;
    cxsMaxPuncture: TcxSpinEdit;
    cxsMinOpasitas: TcxSpinEdit;
    cxsMaxOpasitas: TcxSpinEdit;
    cxsMinDrat: TcxSpinEdit;
    cxsMaxDrat: TcxSpinEdit;
    cxtAcuan: TcxTextEdit;
    cxlSatuan: TcxLookupComboBox;
    cxlSatuanDet: TcxLookupComboBox;
    cxsTSTD: TcxSpinEdit;
    cxsTSMD: TcxSpinEdit;
    cxsTETD: TcxSpinEdit;
    cxsTEMD: TcxSpinEdit;
    cxsTearTD: TcxSpinEdit;
    cxsTearMD: TcxSpinEdit;
    cxsPuncture: TcxSpinEdit;
    cxsOpasitas: TcxSpinEdit;
    cxsDrat: TcxSpinEdit;
    cxtCritical: TcxMemo;
    Label52: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblRouting: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColRouting: TcxGridColumn;
    cxColKodeRouting: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColMesin: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    zqrIS: TZQuery;
    dsIS: TDataSource;
    zCust: TZQuery;
    dsCust: TDataSource;
    zUnit: TZQuery;
    ds3: TDataSource;
    zSatuan: TZQuery;
    ds4: TDataSource;
    zqrBrgRouting: TZQuery;
    dsBrgRouting: TDataSource;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    zqrUnit: TZQuery;
    dsUnit: TDataSource;
    zqrKelompok: TZQuery;
    dsKelompok: TDataSource;
    zqrSubKelompok: TZQuery;
    dsSubKelompok: TDataSource;
    zMesin: TZQuery;
    dsMesin: TDataSource;
    zqrUnitKTG: TZReadOnlyQuery;
    dsUnitKTG: TDataSource;
    zqrUnit2: TZReadOnlyQuery;
    dsUnit2: TDataSource;
    cxLabel1: TcxLabel;
    cxtNoCP: TcxTextEdit;
    btnCopyDetailBrg: TButton;
    Label1: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cxtAksesoris: TcxTextEdit;
    cxsTebalAks: TcxSpinEdit;
    cxsBeratAks: TcxSpinEdit;
    cxsLebarAks: TcxSpinEdit;
    cxsPanjangAks: TcxSpinEdit;
    cxttt_aks: TcxTextEdit;
    cxttl_aks: TcxTextEdit;
    cxttp_aks: TcxTextEdit;
    cxttb_aks: TcxTextEdit;
    Label28: TLabel;
    cxtAlur: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxTabSheet4: TcxTabSheet;
    Label69: TLabel;
    cxtKetImg: TcxTextEdit;
    Label70: TLabel;
    cxtNamaFile: TcxTextEdit;
    btnSimpanGambar: TButton;
    btnBrowse: TButton;
    Label75: TLabel;
    cxGrid8: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxTblImg: TcxGridTableView;
    cxColIDImg: TcxGridColumn;
    cxColKetImg: TcxGridColumn;
    cxColLihatImg: TcxGridColumn;
    cxGridLevel6: TcxGridLevel;
    btnHapusImg: TButton;
    btnLihatImage: TButton;
    Label71: TLabel;
    Panel3: TPanel;
    image: TImage;
    openDlg: TOpenDialog;
    lbl1: TLabel;
    cxsPlong: TcxSpinEdit;
    ScrollBox2: TScrollBox;
    cxGroupBox6: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxt_ape_nama: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxt_ape_coretype: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxt_ape_pola_treatluar: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxt_ape_pola_treatdalam: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxs_ape_treatluar: TcxSpinEdit;
    cxs_ape_treatdalam: TcxSpinEdit;
    cxLabel34: TcxLabel;
    cxLabel39: TcxLabel;
    cxs_ape_lebartube: TcxSpinEdit;
    cxs_ape_shifting_bobin: TcxSpinEdit;
    cxs_ape_meter_roll: TcxSpinEdit;
    cxs_ape_panjang_core: TcxSpinEdit;
    cxChkExtrusi: TcxCheckBox;
    cxGroupBox7: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxt_app_nama: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxt_app_coretype: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxt_app_tipe_print: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxs_app_jmlsilinder: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxs_app_lebar_gbr: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxs_app_panjang_gbr: TcxSpinEdit;
    cxLabel26: TcxLabel;
    cxt_app_desain_printing: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxt_app_urutanwarna: TcxTextEdit;
    cxt_app_arahfilm: TcxTextEdit;
    cxt_app_arahgulungan: TcxTextEdit;
    cxs_app_shifting_bobin: TcxSpinEdit;
    cxs_app_keliling_silinder: TcxSpinEdit;
    cxs_app_repeat_print: TcxSpinEdit;
    cxs_app_jarak_gbrkiri: TcxSpinEdit;
    cxs_app_jarak_gbrkanan: TcxSpinEdit;
    cxs_app_meter_roll: TcxSpinEdit;
    cxs_app_panjang_core: TcxSpinEdit;
    cxLabel40: TcxLabel;
    cxs_app_panjang_silinder: TcxSpinEdit;
    cxs_app_diameter_silinder: TcxSpinEdit;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxs_app_jarak_gbratas: TcxSpinEdit;
    cxs_app_jarak_gbrbawah: TcxSpinEdit;
    cxChkPrinting: TcxCheckBox;
    cxGroupBox8: TcxGroupBox;
    Label29: TLabel;
    cxLabel29: TcxLabel;
    cxt_apc_nama: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxLabel33: TcxLabel;
    cxs_apc_jarak_gbrkanan: TcxSpinEdit;
    cxs_apc_jarak_gbrkiri: TcxSpinEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxs_apc_jarak_gbratas: TcxSpinEdit;
    cxs_apc_jarak_gbrbawah: TcxSpinEdit;
    cxLabel35: TcxLabel;
    cxt_apc_arahfilm: TcxTextEdit;
    cxChkConverting: TcxCheckBox;
    cxs_apc_plong: TcxSpinEdit;
    cxGroupBox9: TcxGroupBox;
    cxLabel37: TcxLabel;
    cxt_apg_nama: TcxTextEdit;
    cxLabel38: TcxLabel;
    cxLabel44: TcxLabel;
    cxs_apg_meter: TcxSpinEdit;
    cxs_apg_lebar: TcxSpinEdit;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxs_apg_toleransi: TcxSpinEdit;
    cxs_apg_panjang: TcxSpinEdit;
    cxLabel47: TcxLabel;
    cxt_apg_arah: TcxTextEdit;
    cxChkGusset: TcxCheckBox;
    cxLabel48: TcxLabel;
    cxt_apg_core: TcxTextEdit;
    cxGroupBox10: TcxGroupBox;
    cxLabel49: TcxLabel;
    cxt_ape_nama1: TcxTextEdit;
    cxLabel50: TcxLabel;
    cxt_ape_coretype1: TcxTextEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxt_ape_pola_treatluar1: TcxTextEdit;
    cxLabel56: TcxLabel;
    cxt_ape_pola_treatdalam1: TcxTextEdit;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxs_ape_treatluar1: TcxSpinEdit;
    cxs_ape_treatdalam1: TcxSpinEdit;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxs_ape_lebartube1: TcxSpinEdit;
    cxs_ape_shifting_bobin1: TcxSpinEdit;
    cxs_ape_meter_roll1: TcxSpinEdit;
    cxs_ape_panjang_core1: TcxSpinEdit;
    cxChkExtrusi1: TcxCheckBox;
    Label30: TLabel;
    Label31: TLabel;
    cxsMinOpasitas1: TcxSpinEdit;
    cxsOpasitas1: TcxSpinEdit;
    cxsMaxOpasitas1: TcxSpinEdit;
    cxsMinOpasitas2: TcxSpinEdit;
    cxsOpasitas2: TcxSpinEdit;
    cxsMaxOpasitas2: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxlKelompokPropertiesChange(Sender: TObject);
    procedure cxlSubKelompokPropertiesChange(Sender: TObject);
    procedure btnGenerateKodeClick(Sender: TObject);
    procedure cxCmbBasePropertiesChange(Sender: TObject);
    procedure cxlISPropertiesEditValueChanged(Sender: TObject);
    procedure btnHitungBeratClick(Sender: TObject);
    procedure btnCopyDetailBrgClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblRoutingDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxTblRoutingDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxlSatuanPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure btnSimpanGambarClick(Sender: TObject);
    procedure btnHapusImgClick(Sender: TObject);
    procedure btnLihatImageClick(Sender: TObject);
    procedure cxTblImgCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    mNoCP: string;
    function HitungBerat: real;
    function HitungBeratKotor: real;
    function HitungBeratBersih: Real;
    function BeratPerMeter: real;
    procedure ClearAll;

  public
    { Public declarations }
    property NoCP: string read mNoCP write mNoCP;
  end;

var
  frmCP: TfrmCP;

implementation

uses unTools, unDm, unAplikasi, unFrmCari;

{$R *.dfm}

procedure TfrmCP.FormCreate(Sender: TObject);
begin
  inherited;
  zqrIS.Open ;
  zqrBrgRouting.Open ;
  zqrBrgBom.Open ;
  zqrUnit.Open ;
  zqrKelompok.Open ;
  zqrSubKelompok.Open ;
  zqrUnitKTG.Open ;
  zqrUnit2.Open ;
  zCust.Open ;
  zUnit.Open;
  zSatuan.Open;
  zMesin.Open;

  cxtNoCP.Text := GetLastFak('cp');

  with cxCmbBentuk.Properties do begin
    Items.Add('BOTTOM-SEAL');
    Items.Add('SIDE-SEAL');
    Items.Add('NON-RECTANGLE');
    Items.Add('SHEET');
    Items.Add('TUBE');
  end;

  pg.ActivePageIndex := 0;
  pg.Pages[2].TabVisible := True;
  ScrollBox1.VertScrollBar.Position := 0;

  cxdTgl1.Date := Aplikasi.TanggalServer;
  cxlKelompok.ItemIndex := 0;
  
  cxChkAktif.Checked := True;
end;

procedure TfrmCP.cxlKelompokPropertiesChange(Sender: TObject);
begin
  cxtKelompok.Text := zqrKelompok.FieldByName('kelompok').AsString;
  zqrSubKelompok.Close;
  zqrSubKelompok.ParamByName('kode_kelompok').AsString := zqrKelompok.FieldByName('kode').AsString;
  zqrSubKelompok.Open;
end;

procedure TfrmCP.cxlSubKelompokPropertiesChange(Sender: TObject);
begin
  inherited;
cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
end;

procedure TfrmCP.btnGenerateKodeClick(Sender: TObject);
begin
  inherited;
  if cxlKelompok.Text = '' then Abort;
  if cxlSubKelompok.Text = '' then Abort;

  try
    if (cxlKelompok.Text = 'A') or (cxlKelompok.Text = 'B') then
      cxtKode.Text := cxlKelompok.Text + cxlSubKelompok.Text + '.' + cxlCustomer.EditValue ;

    cxtKode.Text := GetLastKodeBrg(cxtKode.Text + '.');

  except
  end;
end;

procedure TfrmCP.cxCmbBasePropertiesChange(Sender: TObject);
var
  q : TZQuery ;
begin
   q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''', [cxCmbBase.Text]);
  cxsBeratJenis.EditValue := q.FieldByName('std').AsFloat;
end;

procedure TfrmCP.cxlISPropertiesEditValueChanged(Sender: TObject);
var
  q,z: TZQuery;
  i,j: Integer;
begin
  inherited;
    try
    q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);
    if not q.IsEmpty then begin
      cxlCustomer.EditValue := q.FieldByName('kode_customer').AsString;
      cxtFungsi.Text := q.FieldByName('func_of_bags').AsString;
      
      cxsTebal.Value := q.FieldByname('thickness_total').Value;
      cxsLebarBuka.Value := q.FieldByname('open_width').Value;
      cxsPanjangPlong.Value := q.FieldByName('cut_out_height').Value;
      cxsLebarJadi.Value := q.FieldByName('face_width').Value;
      cxsLebarPlong.Value := q.FieldByName('cut_out_width').Value;
      cxsPanjang.Value := q.FieldByName('total_height').Value;
      cxsTopFlod.Value := q.FieldByname('top_fold').Value;
      cxsPanjangJadi.Value := q.FieldByName('face_height').Value;
      cxCmbBase.Text := q.FieldByName('bm_bag').Value;
    end;
    q.Close;

    q := OpenRS('SELECT * FROM tbl_barang WHERE no_is =''%s''',[zqrIS.FieldByName('no_is').AsString] );

    if not q.IsEmpty then begin
      with q do begin
        cxtDeskripsi.Text         := FieldByName('deskripsi').AsString;
        cxlCustomer.EditValue     := FieldByName('kode_customer').AsString;
        cxtFungsi.Text            := FieldByName('fungsi').AsString;
        cxcmbBase.Text            := FieldByName('base_material').AsString ;
        cxtSheet.Text             := FieldByName('sheet_tube').AsString;
        cxsBeratJenis.Value       := FieldByName('berat_jenis').AsFloat;
        cxsTebal.Value            := FieldByName('tebal').AsFloat;
        cxsBeratKotor.Value       := FieldByName('berat_kotor').AsFloat ;
        cxsBeratBersih.Value      := FieldByName('berat_bersih').AsFloat;
        cxsBeratMeter.Value       := FieldByName('berat_meter').AsFloat;
        cxsBeratJadi.Value        := FieldByName('berat_fg').AsFloat ;
        cxsLebarBuka.Value        := FieldByName('lebar_buka').AsFloat;
        cxsLebarJadi.value        := FieldByName('lebar_jadi').AsFloat;
        cxsPanjang.Value          := FieldByName('panjang').AsFloat;
        cxsPanjangJadi.Value      := FieldByName('panjang_jadi').AsFloat;
        cxsLebarTube.Value        := FieldByName('lebar_tube').AsFloat;
        cxsPanjangPlong.Value     := FieldByName('panjang_plong').AsFloat;
        cxsLebarPlong.Value       := FieldByName('lebar_plong').asFloat;
        cxsTopFlod.Value          := FieldByName('top_fold').AsFloat;
        cxsGusset.Value           := FieldByName('gusset').AsFloat;
        cxsLebarHandle.Value      := FieldByName('lebar_handle').AsFloat;

        cxtBentukProduk.Text      := FieldByName('bentuk_produk').asString;
        cxtDesainPrinting.Text    := FieldByName('desain_produk').AsString;
        cxtWarnaFilm.Text         := FieldByName('warna_film').AsString;
        cxtVisualProperty.Text    := FieldByName('visual').AsString;
        cxtSurfaceProperty.Text   := FieldByName('surface').AsString;
        cxsMinTSTD.Value          := FieldByName('min_std').asFloat;
        cxsMaxTSTD.Value          := FieldByName('max_std').asFloat;
        cxsMinTSMD.Value          := FieldByName('min_smd').AsFloat;
        cxsMaxTSMD.Value          := FieldByName('max_smd').AsFloat;
        cxsMinTETD.Value          := FieldByName('min_etd').AsFloat;
        cxsMaxTETD.Value          := FieldByName('max_etd').AsFloat;
        cxsMinTEMD.Value          := FieldByName('min_emd').asFloat;
        cxsMaxTEMD.Value          := FieldByName('max_emd').asFloat;
        cxsMinTearTD.Value        := FieldByName('min_teartd').AsFloat;
        cxsMaxTearTD.Value        := FieldByName('max_teartd').AsFloat;
        cxsMinTearMD.Value        := FieldByName('min_tearmd').asFloat;
        cxsMaxTearMD.Value        := FieldByName('max_tearmd').asFloat;
        cxsMinPuncture.Value      := FieldByName('min_resistance').asFloat;
        cxsMaxPuncture.Value      := FieldByName('max_resistance').asFloat;
        cxsMinDrat.Value          := FieldByName('min_impact').asFloat;
        cxsMaxDrat.Value          := FieldByName('max_impact').AsFloat;
        cxsMinOpasitas.Value      := FieldByName('min_opasitas').asFloat;
        cxsMaxOpasitas.Value      := FieldByName('max_opasitas').asFloat;
        cxtWarnaFilm.Text         := FieldByName('std_warnafilm').AsString;
        cxlSatuan.EditValue       := FieldByName('unitsetid').AsString;
        cxlSatuanDet.EditValue    := FieldByName('unitid').AsString;
        cxtCritical.Text          := FieldByName('critical_point').AsString;

        cxsTSTD.Value        := FieldByName('std_std').AsFloat;
        cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
        cxsTETD.Value        := FieldByName('std_etd').AsFloat;
        cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
        cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
        cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
        cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
        cxsDrat.Value        := FieldByName('std_impact').AsFloat;
        cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

        cxsTinggiTotal.Value := FieldByName('tinggi_total').Value;
        cxCmbBentuk.Text := FieldByName('bentuk').AsString;

        if FieldByName('f_aktif').AsInteger = 1 then
          cxChkAktif.Checked := True
        else
          cxChkAktif.Checked := False;

        cxlUnitKTG.EditValue := q.FieldByName('unit_ktg').AsString;

      end;
    end;
  except
  end;
end;

procedure TfrmCP.btnHitungBeratClick(Sender: TObject);
begin
  inherited;
  cxsBeratKotor.Value := HitungBeratKotor;
  cxsBeratBersih.Value := HitungBeratBersih;
  cxsBeratMeter.Value :=  BeratPerMeter;

end;

function TfrmCP.BeratPerMeter: real;
var
  q: TZQuery;
  konstanta: real;
begin
   // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    //konstanta := q.FieldByname('std').AsFloat;
    konstanta := cxsBeratJenis.EditValue ;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarTube.Value * 100;
  finally
    //Result := 0;
  end;
end;

function TfrmCP.HitungBeratBersih: Real;
var
  persen_plong: real;
begin
  try
    persen_plong := (cxsPanjangPlong.Value * cxsLebarPlong.Value) / (cxsLebarBuka.Value * cxsPanjang.Value);
    Result := (cxsBeratKotor.Value - (persen_plong * cxsBeratKotor.Value)) ; // + Berat_Handle
  finally
    //Result := 0;
  end;
end;

function TfrmCP.HitungBeratKotor: real;
var
  q: TZQuery;
  konstanta: real;
begin
   // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    //konstanta := q.FieldByname('std').AsFloat;
    konstanta := cxsBeratJenis.EditValue ;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarBuka.Value * cxsPanjang.Value;
  finally
    // Result := 0;
  end;
end;

function TfrmCP.HitungBerat: real;
var
  tebal, lebar_buka, tinggi_total,
  panjang, panjang_jadi, konstanta,
  top_fold, gusset, res: real;
  q: TZQuery;
begin
   try
    tebal := cxsTebal.Value;
    lebar_buka := cxsLebarBuka.Value;
    panjang := cxsPanjang.Value;
    panjang_jadi := cxsPanjangJadi.Value;
    tinggi_total := cxsTinggiTotal.Value;
    top_fold := cxsTopFlod.Value;
    gusset := cxsGusset.Value;

    // ambil konstanta
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''', [cxCmbBase.Text]);
    if not q.IsEmpty then begin
      //konstanta := q.FieldByName('std').Value;
      konstanta := cxsBeratJenis.EditValue ;
    end;
    q.Close;

    if (cxCmbBentuk.Text = 'NON-RECTANGLE') or
      (cxCmbBentuk.Text = 'SHEET') then begin
      res := (tebal / 10000) * lebar_buka * tinggi_total * konstanta / 2;

    end
    else begin
      res := (tebal / 10000) * lebar_buka * (tinggi_total + top_fold + gusset) * konstanta;
    end;

    Result := res;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      Result := 0;
    end;
  end;
end;

procedure TfrmCP.btnCopyDetailBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q,z: TZQuery;
  i: Integer;
begin
  inherited;
   f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;

  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[fKode.AsString]);
    
    with q do begin
      
      cxtFungsi.Text            := FieldByName('fungsi').AsString;
      cxcmbBase.Text            := FieldByName('base_material').AsString ;
      cxtSheet.Text             := FieldByName('sheet_tube').AsString;
      cxsBeratJenis.Value       := FieldByName('berat_jenis').AsFloat;
      cxsTebal.Value            := FieldByName('tebal').AsFloat;
      cxsBeratKotor.Value       := FieldByName('berat_kotor').AsFloat ;
      cxsBeratBersih.Value      := FieldByName('berat_bersih').AsFloat;
      cxsBeratMeter.Value       := FieldByName('berat_meter').AsFloat;
      cxsBeratJadi.Value        := FieldByName('berat_fg').AsFloat ;
      cxsLebarBuka.Value        := FieldByName('lebar_buka').AsFloat;
      cxsLebarJadi.value        := FieldByName('lebar_jadi').AsFloat;
      cxsPanjang.Value          := FieldByName('panjang').AsFloat;
      cxsPanjangJadi.Value      := FieldByName('panjang_jadi').AsFloat;
      cxsLebarTube.Value        := FieldByName('lebar_tube').AsFloat;
      cxsPanjangPlong.Value     := FieldByName('panjang_plong').AsFloat;
      cxsLebarPlong.Value       := FieldByName('lebar_plong').asFloat;
      cxsTopFlod.Value          := FieldByName('top_fold').AsFloat;
      cxsGusset.Value           := FieldByName('gusset').AsFloat;
      cxsLebarHandle.Value      := FieldByName('lebar_handle').AsFloat;
    
      cxtBentukProduk.Text      := FieldByName('bentuk_produk').asString;
      cxtDesainPrinting.Text    := FieldByName('desain_produk').AsString;
      cxtWarnaFilm.Text         := FieldByName('warna_film').AsString;
      cxtVisualProperty.Text    := FieldByName('visual').AsString;
      cxtSurfaceProperty.Text   := FieldByName('surface').AsString;
      cxsMinTSTD.Value          := FieldByName('min_std').asFloat;
      cxsMaxTSTD.Value          := FieldByName('max_std').asFloat;
      cxsMinTSMD.Value          := FieldByName('min_smd').AsFloat;
      cxsMaxTSMD.Value          := FieldByName('max_smd').AsFloat;
      cxsMinTETD.Value          := FieldByName('min_etd').AsFloat;
      cxsMaxTETD.Value          := FieldByName('max_etd').AsFloat;
      cxsMinTEMD.Value          := FieldByName('min_emd').asFloat;
      cxsMaxTEMD.Value          := FieldByName('max_emd').asFloat;
      cxsMinTearTD.Value        := FieldByName('min_teartd').AsFloat;
      cxsMaxTearTD.Value        := FieldByName('max_teartd').AsFloat;
      cxsMinTearMD.Value        := FieldByName('min_tearmd').asFloat;
      cxsMaxTearMD.Value        := FieldByName('max_tearmd').asFloat;
      cxsMinPuncture.Value      := FieldByName('min_resistance').asFloat;
      cxsMaxPuncture.Value      := FieldByName('max_resistance').asFloat;
      cxsMinDrat.Value          := FieldByName('min_impact').asFloat;
      cxsMaxDrat.Value          := FieldByName('max_impact').AsFloat;
      cxsMinOpasitas.Value      := FieldByName('min_opasitas').asFloat;
      cxsMaxOpasitas.Value      := FieldByName('max_opasitas').asFloat;
      cxtWarnaFilm.Text         := FieldByName('std_warnafilm').AsString;
      cxlSatuan.EditValue       := FieldByName('unitsetid').AsString;
      cxlSatuanDet.EditValue    := FieldByName('unitid').AsString;
      cxtCritical.Text          := FieldByName('critical_point').AsString;
      cxsLine.EditValue         := FieldByName('line').AsFloat;

      cxsTSTD.Value        := FieldByName('std_std').AsFloat;
      cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
      cxsTETD.Value        := FieldByName('std_etd').AsFloat;
      cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
      cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
      cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
      cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
      cxsDrat.Value        := FieldByName('std_impact').AsFloat;
      cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

      cxlKelompok.EditValue := FieldByName('kelompok').AsString;
      cxlSubKelompok.EditValue := FieldByName('sub_kelompok').AsString;
      cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
 
    
      cxsTinggiTotal.Value := FieldByName('tinggi_total').Value;
      cxCmbBentuk.Text := FieldByName('bentuk').AsString;

      if FieldByName('f_aktif').AsInteger = 1 then
        cxChkAktif.Checked := True
      else
        cxChkAktif.Checked := False;

    

      cxlUnitKTG.EditValue := q.FieldByName('unit_ktg').AsString;




      cxlIS.EditText := q.FieldByName('no_is').AsString;

      
    end;
    q.Close;
    
  end;
end;

procedure TfrmCP.btnSimpanClick(Sender: TObject);
var
  f, f_persen, f_volume, f_satu : boolean;
  i,j,k,l : Integer;
  tbl_sa, tbl_brg_det: TZTable;
  q, qSA,z : TZQuery;
  lst, lst2: TStringList;
  tot_persen: real;
  sNoCP, sKode1, sKode2, sFld: string;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if cxtKode.Text = '' then begin
    MsgBox('Kode Harus di isi.');
    cxtKode.SetFocus;
    Abort;
  end
  else if cxlSatuan.Text = '' then begin
    MsgBOx('Unit set / satuan harus di isi.');
    pg.ActivePageIndex := 1;
    cxlSatuan.SetFocus;
    Abort;
  end
  else if cxlSatuanDet.Text = '' then begin
    MsgBox('Unit set / satuan harus di isi.');
    pg.ActivePageIndex := 1;
    cxlSatuanDet.SetFocus;
    Abort;
  end
  else begin

    if cxlUnitKTG.Text = '' then begin
      if Copy(cxtKode.Text,1,1) <> 'C' then begin
        MsgBox('Unit harus di isi.');
        cxlUnitKTG.SetFocus;
        Abort;
      end;
    end;


    if Self.Jenis = 'tambah' then begin
      sNoCP := GetLastFak('cp');
      UpdateFaktur(Copy(sNoCP,1,7));
      q := OpenRS('SELECT * FROM tbl_cp WHERE no_cp =''%s''', [sNoCP] ) ;
    end
    else begin
      sNoCP := cxtNoCP.Text;
      q := OpenRS('SELECT * FROM tbl_cp WHERE no_cp =''%s''', [cxtNoCP.Text] );
    end;


    f:= True ;
    if Self.Jenis= 'tambah' then begin
      if not q.IsEmpty then begin
        MsgBox('Kode Barang Sudah Ada. Klik Generate Kode untuk mendapatkan kode baru.');
        cxtKode.SelectAll ;
        cxtKode.SetFocus ;
        f:= False ;
      end
      else begin
        q.Insert;
      end;
    end
    else begin
      if q.IsEmpty then begin
        MsgBox('Kode Barang Belum Ada');
        cxtKode.SelectAll ;
        cxtKode.SetFocus ;
        f:= False ;
      end
      else begin
        q.Edit;
        try
          dm.zConn.StartTransaction;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_routing WHERE kode = ''' + cxtKode.Text + '''');
          dm.zConn.Commit;
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;

      end;
    end;
  end;

  with cxTblrouting.DataController  do begin
    for i := 0 to cxTblRouting.DataController.RowCount -1 do begin
     z := OpenRS('SELECT * FROM tbl_cp_routing where kode =''%s''',
        [cxtKode.Text]) ;
     z.Insert;
     z.FieldByName('no').AsInteger := i+1;
     z.FieldByName('routing').AsString := Values[i, cxColRouting.Index] ;
     z.FieldByName('kode').AsString := cxtKode.Text;
     z.FieldByName('kode_brg').AsString := Values[i, cxColKodeRouting.Index];
     z.FieldByName('kode_mesin').AsString := Values[i, cxColMesin.Index];
     z.Post;
     z.Close;
    end;
  end;

  if f then begin
    with q do begin
      FieldByName('no_cp').AsString            := sNoCP;
      FieldByName('kode').AsString            := cxtKode.Text ;
      FieldByName('deskripsi').AsString       := cxtDeskripsi.Text ;

      if not VarIsNull(cxlCustomer.EditValue) then
        FieldByName('kode_customer').AsString   := cxlCustomer.EditValue;

      FieldByName('tgl_release').AsDateTime   := cxdTgl1.EditValue ;
      FieldByName('fungsi').AsString          := cxtFungsi.Text ;
      FieldByName('base_material').AsString   := cxcmbBase.Text ;
      FieldByName('sheet_tube').AsString      := cxtSheet.Text ;
      FieldByName('berat_jenis').AsFloat      := cxsBeratJenis.Value ;
      FieldByName('tebal').AsFloat            := cxsTebal.Value ;
      FieldByName('berat_kotor').AsFloat      := cxsBeratKotor.Value ;
      FieldByName('berat_bersih').AsFloat     := cxsBeratBersih.Value;
      FieldByName('berat_meter').AsFloat      := cxsBeratMeter.Value ;
      FieldByName('berat_fg').AsFloat         := cxsBeratJadi.Value;
      FieldByName('lebar_buka').AsFloat       := cxsLebarBuka.Value;
      FieldByName('lebar_jadi').AsFloat       := cxsLebarJadi.value;
      FieldByName('panjang').AsFloat          := cxsPanjang.Value;
      FieldByName('panjang_jadi').AsFloat     := cxsPanjangJadi.Value;
      FieldByName('lebar_tube').AsFloat       := cxsLebarTube.Value;
      FieldByName('panjang_plong').AsFloat    := cxsPanjangPlong.Value;
      FieldByName('lebar_plong').asFloat      := cxsLebarPlong.Value;
      FieldByName('top_fold').AsFloat         := cxsTopFlod.Value;
      FieldByName('gusset').AsFloat           := cxsGusset.Value;
      FieldByName('lebar_handle').AsFloat     := cxsLebarHandle.Value;
      FieldByName('aksesoris').AsString       := cxtAksesoris.Text;
      FieldByName('berat_aksesoris').AsFloat  := cxsBeratAks.Value;
      FieldByName('t_aksesoris').AsFloat      := cxsTebalAks.Value;
      FieldByName('l_aksesoris').AsFloat      := cxsLebarAks.Value;
      FieldByName('p_aksesoris').AsFloat      := cxsPanjangAks.Value;
      //FieldByName('air_hole').AsFloat         := cxsAirHole.Value;
      //FieldByName('cut').AsFloat              := cxsCut.Value ;
      FieldByName('bentuk_produk').asString   := cxtBentukProduk.Text;
      FieldByName('desain_produk').AsString   := cxtDesainPrinting.Text ;
      FieldByName('warna_film').AsString      := cxtWarnaFilm.Text;
      FieldByName('visual').AsString          := cxtVisualProperty.Text ;
      FieldByName('surface').AsString         := cxtSurfaceProperty.Text ;
      FieldByName('min_std').AsFloat          := cxsMinTSTD.Value;
      FieldByName('max_std').asFloat          := cxsMaxTSTD.Value;
      FieldByName('min_smd').AsFloat          := cxsMinTSMD.Value;
      FieldByName('max_smd').AsFloat          := cxsMaxTSMD.Value;
      FieldByName('min_etd').AsFloat          := cxsMinTETD.Value;
      FieldByName('max_etd').AsFloat          := cxsMaxTETD.Value;
      FieldByName('min_emd').asFloat          := cxsMinTEMD.Value;
      FieldByName('max_emd').asFloat          := cxsMaxTEMD.Value;
      FieldByName('min_teartd').AsFloat       := cxsMinTearTD.Value;
      FieldByName('max_teartd').AsFloat       := cxsMaxTearTD.Value;
      FieldByName('min_tearmd').asFloat       := cxsMinTearMD.Value;
      FieldByName('max_tearmd').asFloat       := cxsMaxTearMD.Value;
      FieldByName('min_resistance').asFloat   := cxsMinPuncture.Value;
      FieldByName('max_resistance').asFloat   := cxsMaxPuncture.Value;
      FieldByName('min_impact').asFloat       := cxsMinDrat.Value;
      FieldByName('max_impact').AsFloat       := cxsMaxDrat.Value;
      FieldByName('min_opasitas').asFloat     := cxsMinOpasitas.Value;
      FieldByName('max_opasitas').asFloat     := cxsMaxOpasitas.Value;
      FieldByName('min_opasitas_silver').asFloat     := cxsMinOpasitas1.Value;
      FieldByName('max_opasitas_silver').asFloat     := cxsMaxOpasitas1.Value;
      FieldByName('min_opasitas_black').asFloat     := cxsMinOpasitas2.Value;
      FieldByName('max_opasitas_black').asFloat     := cxsMaxOpasitas2.Value;
      FieldByName('line').asFloat             := cxsLine.Value;
      FieldByName('standar_roll').asFloat     := cxsStandar.Value;
      FieldByName('alur').asString    := cxtAlur.Text;
      FieldByName('jml_plong').asFloat     := cxsPlong.Value;

      FieldByName('t_tebal').asString         := cxtttebal.Text ;
      FieldByName('t_beratkotor').asString    := cxttbk.Text ;
      FieldByName('t_beratbersih').asString   := cxttbb.Text ;
      FieldByName('t_beratmeter').asString    := cxttberatmeter.Text ;
      FieldByName('t_beratfg').asString      := cxttfg.Text ;
      FieldByName('t_lebarbuka').asString    := cxttlb.Text ;
      FieldByName('t_lebarjadi').asString     := cxttlj.Text ;
      FieldByName('t_panjangtotal').asString  := cxttpt.Text ;
      FieldByName('t_panjangjadi').asString  := cxttpj.Text ;
      FieldByName('tt_aks').asString    := cxttt_aks.Text ;
      FieldByName('tl_aks').asString     := cxttl_aks.Text ;
      FieldByName('tb_aks').asString  := cxttb_aks.Text ;
      FieldByName('tp_aks').asString  := cxttp_aks.Text ;

      FieldByName('std_std').AsFloat := cxsTSTD.Value;
      FieldByName('std_smd').AsFloat := cxsTSMD.Value;
      FieldByName('std_etd').AsFloat := cxsTETD.Value;
      FieldByName('std_emd').AsFloat := cxsTEMD.Value;
      FieldByName('std_teartd').AsFloat := cxsTearTD.Value;
      FieldByName('std_tearmd').AsFloat := cxsTearMD.Value;
      FieldByName('std_resistance').AsFloat := cxsPuncture.Value;
      FieldByName('std_impact').AsFloat := cxsDrat.Value;
      FieldByName('std_opasitas').AsFloat := cxsOpasitas.Value;
       FieldByName('std_opasitas_silver').AsFloat := cxsOpasitas1.Value;
        FieldByName('std_opasitas_black').AsFloat := cxsOpasitas2.Value;

      FieldByName('std_warnafilm').AsString   := cxtWarnaFilm.Text;

      if not VarIsNull(cxlSatuan.EditValue) then
        FieldByName('unitsetid').AsString       := cxlSatuan.EditValue;

      if not VarIsNull(cxlSatuanDet.EditValue) then
        FieldByName('unitid').AsString          := cxlSatuanDet.EditValue;

      FieldByName('critical_point').AsString  := cxtCritical.Text;
      if self.Jenis = 'tambah' then begin
        FieldByName('user_input').AsString := aplikasi.NamaUser;
        FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
        end;
      if Self.Jenis = 'edit' then begin
        FieldByName('user_edit').AsString := aplikasi.NamaUser;
        FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
      end;

      if cxChkAktif.Checked then
        FieldByName('f_aktif').AsInteger := 1
      else
        FieldByName('f_aktif').AsInteger := 0;

      FieldByName('kelompok').AsString := cxlKelompok.EditValue;
      FieldByName('sub_kelompok').AsString := cxlSubKelompok.EditValue;
      //FieldByName('sub_group').AsString := cxtSubGroup.Text;

      //FieldByName('hpp').Value := cxsHPP.EditValue;
      FieldByName('tinggi_total').Value := cxsTinggiTotal.Value;
      FieldByName('bentuk').Value := cxCmbBentuk.Text;
      //FieldByName('kode_supplier').Value := cxlSupplier.EditValue;
      FieldByName('unit_ktg').AsString := cxlUnitKTG.Text;

      FieldByName('no_is').Value := cxlIS.EditValue;

      if Self.Jenis = 'edit' then begin
        FieldByName('user_edit').AsString := APlikasi.NamaUser;
        FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
      end;

      if cxChkExtrusi.Checked then begin
        FieldByName('f_ape').AsInteger := 1;
        FieldByName('ape_nama').AsString := Trim(cxt_ape_nama.Text);
        FieldByName('ape_coretype').AsString := Trim(cxt_ape_coretype.Text);
        FieldByName('ape_treatluar').AsFloat := cxs_ape_treatluar.Value;
        FieldByName('ape_treatdalam').AsFloat := cxs_ape_treatdalam.Value;
        FieldByName('ape_lebartube').AsFloat := cxs_ape_lebartube.Value;
        FieldByName('ape_shifting_bobin').AsFloat := cxs_ape_shifting_bobin.Value;
        FieldByName('ape_pola_treatluar').AsString := Trim(cxt_ape_pola_treatluar.Text);
        FieldByName('ape_pola_treatdalam').AsString := Trim(cxt_ape_pola_treatdalam.Text);
        FieldByName('ape_meter_roll').AsFloat := cxs_ape_meter_roll.Value;
        FieldByName('ape_panjang_core').AsFloat := cxs_ape_panjang_core.Value;
      end;

      if cxChkExtrusi1.Checked then begin
        FieldByName('f_ape1').AsInteger := 1;
        FieldByName('ape_nama1').AsString := Trim(cxt_ape_nama1.Text);
        FieldByName('ape_coretype1').AsString := Trim(cxt_ape_coretype1.Text);
        FieldByName('ape_treatluar1').AsFloat := cxs_ape_treatluar1.Value;
        FieldByName('ape_treatdalam1').AsFloat := cxs_ape_treatdalam1.Value;
        FieldByName('ape_lebartube1').AsFloat := cxs_ape_lebartube1.Value;
        FieldByName('ape_shifting_bobin1').AsFloat := cxs_ape_shifting_bobin1.Value;
        FieldByName('ape_pola_treatluar1').AsString := Trim(cxt_ape_pola_treatluar1.Text);
        FieldByName('ape_pola_treatdalam1').AsString := Trim(cxt_ape_pola_treatdalam1.Text);
        FieldByName('ape_meter_roll1').AsFloat := cxs_ape_meter_roll1.Value;
        FieldByName('ape_panjang_core1').AsFloat := cxs_ape_panjang_core1.Value;
      end;

      if cxChkPrinting.Checked then begin
        FieldByName('f_app').AsInteger := 1;
        FieldByName('app_nama').AsString := Trim(cxt_app_nama.Text);
        FieldByName('app_coretype').AsString := Trim(cxt_app_coretype.Text);
        FieldByName('app_jmlsilinder').AsFloat := cxs_app_jmlsilinder.Value;
        FieldByName('app_arahgulungan').AsString := Trim(cxt_app_arahgulungan.Text);
        FieldByName('app_arahfilm').AsString := Trim(cxt_app_arahfilm.Text);
        FieldByName('app_urutanwarna').AsString := Trim(cxt_app_urutanwarna.Text);
        FieldByName('app_lebar_gbr').AsFloat := cxs_app_lebar_gbr.Value;
        FieldByName('app_panjang_gbr').AsFloat := cxs_app_panjang_gbr.Value;
        FieldByName('app_tipe_print').AsString := Trim(cxt_app_tipe_print.Text);
        FieldByName('app_shifting_bobin').AsFloat := cxs_app_shifting_bobin.Value;
        FieldByName('app_keliling_silinder').AsFloat := cxs_app_keliling_silinder.Value;
        FieldByName('app_repeat_print').AsFloat := cxs_app_repeat_print.Value;
        FieldByName('app_desain_printing').AsString := Trim(cxt_app_desain_printing.Text);
        FieldByName('app_jarak_gbrkiri').AsFloat := cxs_app_jarak_gbrkiri.Value;
        FieldByName('app_jarak_gbrkanan').AsFloat := cxs_app_jarak_gbrkanan.Value;
        FieldByName('app_meter_roll').AsFloat := cxs_app_meter_roll.Value;
        FieldByName('app_panjang_core').AsFloat := cxs_ape_panjang_core.Value;
        FieldByName('app_panjang_silinder').AsFloat := cxs_app_panjang_silinder.Value;
        FieldByName('app_diameter_silinder').AsFloat := cxs_app_diameter_silinder.Value;
        FieldByName('app_jarak_gbratas').AsFloat := cxs_app_jarak_gbratas.Value;
        FieldByName('app_jarak_gbrbawah').AsFloat := cxs_app_jarak_gbrbawah.Value;
      end;

      if cxChkConverting.Checked then begin
        FieldByName('f_apc').AsInteger := 1;
        FieldByName('apc_nama').AsString := Trim(cxt_apc_nama.Text);
        FieldByName('apc_jarak_gbrkiri').AsFloat := cxs_apc_jarak_gbrkiri.Value;
        FieldByName('apc_jarak_gbrkanan').AsFloat := cxs_apc_jarak_gbrkanan.Value;
        FieldByName('apc_jarak_gbratas').AsFloat := cxs_apc_jarak_gbratas.Value;
        FieldByName('apc_jarak_gbrbawah').AsFloat := cxs_apc_jarak_gbrbawah.Value;
        FieldByName('apc_jmlplong').AsFloat := cxs_apc_plong.Value;
        FieldByName('apc_arahfilm').AsString := Trim(cxt_apc_arahfilm.Text);
      end;

      if cxChkGusset.Checked then begin
        FieldByName('f_apg').AsInteger := 1;
        FieldByName('apg_nama').AsString := Trim(cxt_apg_nama.Text);
        FieldByName('apg_lebar_jadi').AsFloat := cxs_apg_lebar.Value;
        FieldByName('apg_meter_roll').AsFloat := cxs_apg_meter.Value;
        FieldByName('apg_toleransi_gusset').AsFloat := cxs_apg_toleransi.Value;
        FieldByName('apg_panjang_core').AsFloat := cxs_apg_panjang.Value;
        FieldByName('apg_arah_film').AsString := Trim(cxt_apg_arah.Text);
        FieldByName('apg_core_type').AsString := Trim(cxt_apg_core.Text);
      end;

      Post;
      Close;

      if Self.Jenis = 'tambah' then begin
        UpdateFaktur(Copy(cxtKode.Text,1,LastDelimiter('.',cxtKode.Text)));
      end;

      zqrBrgRouting.Close;
      zqrBrgRouting.Open;

      zqrBrgBom.Close;
      zqrBrgBom.Open;

      MsgBox('Data CP Sudah Disimpan');
      ClearAll;
      btnBatalClick(nil);
      Close;
    end;
  end;
  
end;

procedure TfrmCP.ClearAll;
var
  i,j: Integer;
begin

  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxGroupBox then
      (Components[i] as TcxGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
    if Components[i] is TcxMemo then
      (Components[i] as TcxMemo).Text := '';
  end;

  cxChkAktif.Checked := False;
  
  cxTblRouting.DataController.RecordCount := 0;
  

  ScrollBox1.VertScrollBar.Position := 0;
  Self.Jenis := '';
  
end;

procedure TfrmCP.cxTblRoutingDataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i: integer;
begin
  inherited;
  i := ADataController.FocusedRowIndex;

  if (VarIsNull(ADataController.Values[i, cxColKodeRouting.Index])) or
    (Trim(ADataController.Values[i, cxColKodeRouting.Index]) = '')  then begin
    MsgBox('Kode barang detail routing harus di isi.');
    Abort;
  end;

  if (VarIsNull(ADataController.Values[i, cxColRouting.Index])) or
    (Trim(ADataController.Values[i, cxColRouting.Index]) = '')  then begin
    MsgBox('Jenis routing harus di isi.');
    Abort;
  end;

end;
procedure TfrmCP.cxTblRoutingDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColDeskripsi.Index then begin
    try
      cxTblRouting.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColKodeRouting.Index] :=
        ADataController.Values[ARecordIndex, cxColDeskripsi.Index];
    finally
      cxTblRouting.EndUpdate;
    end;
  end;
end;

procedure TfrmCP.cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmCP.cxlSatuanPropertiesChange(Sender: TObject);
begin
  inherited;
  if zSatuan.Active then zSatuan.Close ;
  zSatuan.ParamByName('unitset').AsString := cxlSatuan.EditValue;
  zSatuan.Open;
end;

procedure TfrmCP.FormShow(Sender: TObject);
var
  q,zz : TZQuery ;
  i : Integer ;
begin
  inherited;
   if Jenis='edit' then begin
       cxtNoCP.Text := mNoCP ;

       q := OpenRS('SELECT * FROM tbl_cp where no_cp =''%s''',[cxtNoCP.Text]) ;

      cxlCustomer.EditValue := q.FieldByName('kode_customer').AsString;
      cxdTgl1.EditValue:=q.FieldByName('tgl_release').AsDateTime;
      cxtFungsi.Text := q.FieldByName('fungsi').AsString;
      cxtKode.Text := q.FieldByName('kode').AsString;
      cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
      cxcmbBase.Text := q.FieldByName('base_material').AsString;
      cxtSheet.Text := q.FieldByName('sheet_tube').AsString;
      cxsBeratJenis.Value := q.FieldByName('berat_jenis').AsFloat ;
      cxsTebal.EditValue:= q.FieldByName('tebal').AsFloat ;
      cxsBeratKotor.EditValue:= q.FieldByName('berat_kotor').AsFloat  ;
      cxsBeratBersih.EditValue:= q.FieldByName('berat_bersih').AsFloat;
      cxsBeratMeter.EditValue:= q.FieldByName('berat_meter').AsFloat ;
      cxsBeratJadi.EditValue:= q.FieldByName('berat_fg').AsFloat;
      cxsLebarBuka.EditValue:= q.FieldByName('lebar_buka').AsFloat ;
      cxsLebarJadi.EditValue:= q.FieldByName('lebar_jadi').AsFloat;
      cxsPanjang.EditValue:= q.FieldByName('panjang').AsFloat;
      cxsPanjangJadi.EditValue:= q.FieldByName('panjang_jadi').AsFloat;
      cxsLebarTube.EditValue:= q.FieldByName('lebar_tube').AsFloat;
      cxsPanjangPlong.EditValue:= q.FieldByName('panjang_plong').AsFloat;
      cxsLebarPlong.EditValue:= q.FieldByName('lebar_plong').asFloat;
      cxsTopFlod.EditValue:= q.FieldByName('top_fold').AsFloat;
      cxsGusset.EditValue:= q.FieldByName('gusset').AsFloat;
      cxsLebarHandle.EditValue:= q.FieldByName('lebar_handle').AsFloat ;
      cxtBentukProduk.Text := q.FieldByName('bentuk_produk').asString   ;
      cxtDesainPrinting.Text := q.FieldByName('desain_produk').AsString ;
      cxtWarnaFilm.Text:= q.FieldByName('warna_film').AsString  ;
      cxtVisualProperty.Text := q.FieldByName('visual').AsString  ;
      cxtSurfaceProperty.Text := q.FieldByName('surface').AsString  ;
      cxsMinTSTD.Value := q.FieldByName('min_std').AsFloat ;
      cxsMaxTSTD.Value := q.FieldByName('max_std').asFloat;
      cxsMinTSMD.Value := q.FieldByName('min_smd').AsFloat;
      cxsMaxTSMD.Value := q.FieldByName('max_smd').AsFloat;
      cxsMinTETD.Value := q.FieldByName('min_etd').AsFloat  ;
      cxsMaxTETD.Value := q.FieldByName('max_etd').AsFloat;
      cxsMinTEMD.Value := q.FieldByName('min_emd').asFloat ;
      cxsMaxTEMD.Value := q.FieldByName('max_emd').asFloat;
      cxsMinTearTD.Value  := q.FieldByName('min_teartd').AsFloat ;
      cxsMaxTearTD.Value := q.FieldByName('max_teartd').AsFloat;
      cxsMinTearMD.Value := q.FieldByName('min_tearmd').asFloat;
      cxsMaxTearMD.Value := q.FieldByName('max_tearmd').asFloat ;
      cxsMinPuncture.Value := q.FieldByName('min_resistance').asFloat;
      cxsMaxPuncture.Value := q.FieldByName('max_resistance').asFloat;
      cxsMinDrat.Value := q.FieldByName('min_impact').asFloat;
      cxsMaxDrat.Value := q.FieldByName('max_impact').AsFloat ;
      cxsMinOpasitas.Value := q.FieldByName('min_opasitas').asFloat;
      cxsMaxOpasitas.Value := q.FieldByName('max_opasitas').asFloat;
      cxsMinOpasitas1.Value := q.FieldByName('min_opasitas_silver').asFloat;
      cxsMaxOpasitas1.Value := q.FieldByName('max_opasitas_silver').asFloat;
      cxsMinOpasitas2.Value := q.FieldByName('min_opasitas_black').asFloat;
      cxsMaxOpasitas2.Value := q.FieldByName('max_opasitas_black').asFloat;
      cxsLine.Value := q.FieldByName('line').asFloat     ;
      cxsStandar.Value := q.FieldByName('standar_roll').asFloat  ;
      cxtttebal.Text := q.FieldByName('t_tebal').asString  ;
      cxttbk.Text := q.FieldByName('t_beratkotor').asString  ;
      cxttbb.Text := q.FieldByName('t_beratbersih').asString;
      cxttberatmeter.Text := q.FieldByName('t_beratmeter').asString ;
      cxttfg.Text := q.FieldByName('t_beratfg').asString  ;
      cxttlb.Text := q.FieldByName('t_lebarbuka').asString ;
      cxttlj.Text := q.FieldByName('t_lebarjadi').asString;
      cxttpt.Text := q.FieldByName('t_panjangtotal').asString  ;
      cxttpj.Text := q.FieldByName('t_panjangjadi').asString ;
      cxsTSTD.Value := q.FieldByName('std_std').AsFloat;
      cxsTSMD.Value := q.FieldByName('std_smd').AsFloat ;
      cxsTETD.Value  := q.FieldByName('std_etd').AsFloat;
      cxsTEMD.Value := q.FieldByName('std_emd').AsFloat;
      cxsTearTD.Value := q.FieldByName('std_teartd').AsFloat;
      cxsTearMD.Value := q.FieldByName('std_tearmd').AsFloat;
      cxsPuncture.Value := q.FieldByName('std_resistance').AsFloat;
      cxsDrat.Value := q.FieldByName('std_impact').AsFloat;
      cxsOpasitas.Value := q.FieldByName('std_opasitas').AsFloat;
      cxsOpasitas1.Value := q.FieldByName('std_opasitas_silver').AsFloat;
      cxsOpasitas2.Value := q.FieldByName('std_opasitas_black').AsFloat;
      cxtWarnaFilm.Text := q.FieldByName('std_warnafilm').AsString   ;
      cxlSatuan.EditValue := q.FieldByName('unitsetid').AsString ;
      cxlSatuanDet.EditValue := q.FieldByName('unitid').AsString ;
      cxsPlong.Value:= q.FieldByName('jml_plong').asFloat;

      cxtAksesoris.Text:=q.FieldByName('aksesoris').AsString;
      cxsBeratAks.Value := q.FieldByName('berat_aksesoris').AsFloat;
      cxsTebalAks.Value:=q.FieldByName('t_aksesoris').AsFloat;
      cxsLebarAks.Value:=q.FieldByName('l_aksesoris').AsFloat;
      cxsPanjangAks.Value:=q.FieldByName('p_aksesoris').AsFloat;

      cxtCritical.Text := q.FieldByName('critical_point').AsString;

      cxlKelompok.EditValue := q.FieldByName('kelompok').AsString;
      cxlSubKelompok.EditValue := q.FieldByName('sub_kelompok').AsString;

      cxsTinggiTotal.Value := q.FieldByName('tinggi_total').Value;
      cxCmbBentuk.Text := q.FieldByName('bentuk').Value;
      cxlUnitKTG.Text := q.FieldByName('unit_ktg').AsString;

      cxlIS.Text := q.FieldByName('no_is').asString;
      cxtAlur.Text:= q.FieldByName('alur').asString;

      if (q.FieldByName('f_ape').AsInteger= 1) then cxChkExtrusi.checked := True
      else cxChkExtrusi.checked := False ;
      cxt_ape_nama.Text:= q.FieldByName('ape_nama').AsString;
      cxt_ape_coretype.Text:= q.FieldByName('ape_coretype').AsString;
      cxs_ape_treatluar.EditValue:= q.FieldByName('ape_treatluar').AsFloat;
      cxs_ape_treatdalam.EditValue:= q.FieldByName('ape_treatdalam').AsFloat;
      cxs_ape_lebartube.EditValue:= q.FieldByName('ape_lebartube').AsFloat;
      cxs_ape_shifting_bobin.EditValue:= q.FieldByName('ape_shifting_bobin').AsFloat;
      cxt_ape_pola_treatluar.Text:= q.FieldByName('ape_pola_treatluar').AsString;
      cxt_ape_pola_treatdalam.Text:= q.FieldByName('ape_pola_treatdalam').AsString;
      cxs_ape_meter_roll.EditValue:= q.FieldByName('ape_meter_roll').AsFloat;
      cxs_ape_panjang_core.EditValue:= q.FieldByName('ape_panjang_core').AsFloat;

         if (q.FieldByName('f_ape1').AsInteger= 1) then cxChkExtrusi1.checked := True
      else cxChkExtrusi1.checked := False ;
      cxt_ape_nama1.Text:= q.FieldByName('ape_nama1').AsString;
      cxt_ape_coretype1.Text:= q.FieldByName('ape_coretype1').AsString;
      cxs_ape_treatluar1.EditValue:= q.FieldByName('ape_treatluar1').AsFloat;
      cxs_ape_treatdalam1.EditValue:= q.FieldByName('ape_treatdalam1').AsFloat;
      cxs_ape_lebartube1.EditValue:= q.FieldByName('ape_lebartube1').AsFloat;
      cxs_ape_shifting_bobin1.EditValue:= q.FieldByName('ape_shifting_bobin1').AsFloat;
      cxt_ape_pola_treatluar1.Text:= q.FieldByName('ape_pola_treatluar1').AsString;
      cxt_ape_pola_treatdalam1.Text:= q.FieldByName('ape_pola_treatdalam1').AsString;
      cxs_ape_meter_roll1.EditValue:= q.FieldByName('ape_meter_roll1').AsFloat;
      cxs_ape_panjang_core1.EditValue:= q.FieldByName('ape_panjang_core1').AsFloat;


        if q.FieldByName('f_app').AsInteger=1 then  cxChkPrinting.Checked := True
        else cxChkPrinting.Checked := False ;
        cxt_app_nama.Text:= q.FieldByName('app_nama').AsString;
        cxt_app_coretype.Text:= q.FieldByName('app_coretype').AsString;
        cxs_app_jmlsilinder.EditValue:= q.FieldByName('app_jmlsilinder').AsFloat ;
        cxt_app_arahgulungan.Text:= q.FieldByName('app_arahgulungan').AsString;
        cxt_app_arahfilm.Text:= q.FieldByName('app_arahfilm').AsString;
        cxt_app_urutanwarna.Text:= q.FieldByName('app_urutanwarna').AsString;
        cxs_app_lebar_gbr.EditValue:= q.FieldByName('app_lebar_gbr').AsFloat;
        cxs_app_panjang_gbr.EditValue:= q.FieldByName('app_panjang_gbr').AsFloat;
        cxt_app_tipe_print.Text:= q.FieldByName('app_tipe_print').AsString;
        cxs_app_shifting_bobin.EditValue:= q.FieldByName('app_shifting_bobin').AsFloat;
        cxs_app_keliling_silinder.EditValue:= q.FieldByName('app_keliling_silinder').AsFloat;
        cxs_app_repeat_print.EditValue:= q.FieldByName('app_repeat_print').AsFloat;
        cxt_app_desain_printing.Text:= q.FieldByName('app_desain_printing').AsString;
        cxs_app_jarak_gbrkiri.EditValue:= q.FieldByName('app_jarak_gbrkiri').AsFloat;
        cxs_app_jarak_gbrkanan.EditValue:= q.FieldByName('app_jarak_gbrkanan').AsFloat;
        cxs_app_meter_roll.EditValue:= q.FieldByName('app_meter_roll').AsFloat;
        cxs_ape_panjang_core.EditValue:= q.FieldByName('app_panjang_core').AsFloat;
        cxs_app_panjang_silinder.EditValue:= q.FieldByName('app_panjang_silinder').AsFloat;
        cxs_app_diameter_silinder.EditValue:= q.FieldByName('app_diameter_silinder').AsFloat;
        cxs_app_jarak_gbratas.EditValue:= q.FieldByName('app_jarak_gbratas').AsFloat;
        cxs_app_jarak_gbrbawah.EditValue:= q.FieldByName('app_jarak_gbrbawah').AsFloat;

        if q.FieldByName('f_apc').AsInteger= 1 then cxChkConverting.Checked := True
        else cxChkConverting.Checked:=False;
        cxt_apc_nama.Text:= q.FieldByName('apc_nama').AsString;
        cxs_apc_jarak_gbrkiri.EditValue:= q.FieldByName('apc_jarak_gbrkiri').AsFloat;
        cxs_apc_jarak_gbrkanan.EditValue:= q.FieldByName('apc_jarak_gbrkanan').AsFloat;
        cxs_apc_jarak_gbratas.EditValue:= q.FieldByName('apc_jarak_gbratas').AsFloat;
        cxs_apc_jarak_gbrbawah.EditValue:= q.FieldByName('apc_jarak_gbrbawah').AsFloat;
        cxt_apc_arahfilm.Text:= q.FieldByName('apc_arahfilm').AsString;
        cxs_apc_plong.EditValue:=q.FieldByName('apc_jmlplong').AsFloat;

         if q.FieldByName('f_apg').AsInteger= 1 then cxChkGusset.Checked := True
        else cxChkGusset.Checked:=False;
        cxt_apg_nama.Text := q.FieldByName('apg_nama').AsString;
        cxs_apg_lebar.EditValue := q.FieldByName('apg_lebar_jadi').AsFloat;
        cxs_apg_meter.EditValue:= q.FieldByName('apg_meter_roll').AsFloat;
        cxs_apg_toleransi.EditValue:= q.FieldByName('apg_toleransi_gusset').AsFloat;
        cxs_apg_panjang.EditValue := q.FieldByName('apg_panjang_core').AsFloat;
        cxt_apg_arah.Text:=q.FieldByName('apg_arah_film').AsString;
        cxt_apg_core.Text:=q.FieldByName('apg_core_type').AsString;

         zz := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s''',[cxtNoCP.Text]);
        cxTblImg.DataController.RecordCount := 0;
        while not zz.Eof do begin
          with cxTblImg.DataController do begin
            i := AppendRecord;
            Values[i, cxColKetImg.Index] := zz.FieldByName('keterangan').AsString;
            Values[i, cxColLihatImg.Index] := 'Lihat';
            Values[i, cxColIDImg.Index] := zz.FieldByname('id').AsString;
          end;
          zz.Next;
  end;

   end;
end;

procedure TfrmCP.btnBrowseClick(Sender: TObject);
begin
  inherited;
  OpenDlg.Filter := 'JPG files|*.JPG;*.JPEG';
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 550000 then
        MsgBox('Ukuran file tidak boleh lebih dari 500KB.')
      else begin
        image.Picture.LoadFromFile(OpenDlg.FileName);
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

procedure TfrmCP.btnSimpanGambarClick(Sender: TObject);
var
  img: TImage;
  q: TZQuery;
  i: integer;
begin
  inherited;
  if cxtKode.Text = '' then Abort;

  img := TImage.Create(Self);
  q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s''',[cxtNoCP.Text]);

  try
    q.Insert;
    q.FieldByName('kode').AsString := Trim(cxtNoCP.Text);
    q.FieldByName('keterangan').AsString := Trim(cxtKetImg.Text);
    TBlobField(q.FieldByName('image')).LoadFromFile(cxtNamaFile.Text);
    q.Post;
    q.Close;

    q := OpenRS('SELECT LAST_INSERT_ID() id');
    
    with cxTblImg.DataController do begin
      i := AppendRecord;
      Values[i, cxColKetImg.Index] := cxtKetImg.Text;
      Values[i, cxColLihatImg.Index] := 'Lihat';
      Values[i, cxColIDImg.Index] := q.FieldByName('id').AsString;
    end;
    q.Close;
    
  except
  end;
  
  cxtKetImg.Text := '';
  cxtNamaFile.Text := '';
end;

procedure TfrmCP.btnHapusImgClick(Sender: TObject);
var
  i,j: integer;
  id: string;
begin
  inherited;
   j := unTools.QBox(Self, 'Hapus gambar ?','Hapus');

  if j = IDYES then begin
    with cxTblImg.DataController do begin
      i := GetFocusedRecordIndex;
      id := Values[i, cxColIDImg.Index];
      DeleteRecord(i);

      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_barang_det_img WHERE id = %s',[id]));
    end;
  end;
end;

procedure TfrmCP.btnLihatImageClick(Sender: TObject);
var
  i: integer;
  q: TZQuery;
  img: TImage;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
  appPath: string;
begin
  inherited;
   try
    Screen.Cursor := crSQLWait;
    
    i := cxTblImg.DataController.GetFocusedRowIndex;
    q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s'' AND id = %s',
      [cxtNoCP.Text, cxTblImg.DataController.Values[i, cxColIDImg.Index]]);
    if not q.IsEmpty then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;
      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      appPath := Aplikasi.AppPath;

      if not DirectoryExists(appPath + 'tmp') then
        CreateDirectory(PChar(appPath + 'tmp'),nil);
      if FileExists(appPath + 'tmp\tmp.jpg') then
        DeleteFile(appPath + 'tmp\tmp.jpg');

      Stream.SaveToFile(appPath + 'tmp\tmp.jpg');

      ShellExecute(Self.Handle, nil, PChar(appPath + 'tmp\tmp.jpg'), nil, nil, SW_SHOWNORMAL);

      Stream.Free;
      jpg.Free;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfrmCP.cxTblImgCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
  var
  i: integer;
  q: TZQuery;
  img: TImage;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  inherited;
   try
    Screen.Cursor := crSQLWait;
    
    i := cxTblImg.DataController.GetFocusedRowIndex;
    q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s'' AND id = %s',
      [cxtNoCP.Text, cxTblImg.DataController.Values[i, cxColIDImg.Index]]);
    if not q.IsEmpty then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;
      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      image.Picture.Assign(jpg);

      Stream.Free;
      jpg.Free;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  except
  end;
end;

end.
