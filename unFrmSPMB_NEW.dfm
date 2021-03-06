inherited frmSPMB_NEW: TfrmSPMB_NEW
  Left = 443
  Top = 271
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Surat Permintaan Muat Barang'
  ClientHeight = 606
  ClientWidth = 1002
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1002
    inherited lblJudul: TLabel
      Width = 253
      Caption = 'Surat Permintaan Muat Barang'
    end
    object btnEdit2: TButton
      Left = 659
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 738
      Top = 23
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          Width = 200
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          Width = 150
          FieldName = 'tanggal'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
    object cxChkTampilSPMBAll: TcxCheckBox
      Left = 735
      Top = 44
      Caption = 'Tampilkan Semua SPMB'
      TabOrder = 2
      OnClick = cxChkTampilSPMBAllClick
      Width = 161
    end
  end
  inherited pnlTengah: TPanel
    Width = 1002
    Height = 475
    object Label5: TLabel
      Left = 833
      Top = 427
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object Label3: TLabel
      Left = 936
      Top = 451
      Width = 8
      Height = 13
      Caption = '%'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SPMB'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object btnCariPO: TButton
      Left = 642
      Top = 63
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 11
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 210
      Width = 970
      Height = 207
      FixedCols = 5
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 32
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 0
        SortType = stNumeric
        Width = 41
        Images = frmUtama.ImageList1
      end
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
        Position = 1
        SortType = stAlphabetic
        Width = 30
      end
      object nxColKodeBrg: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
      end
      object nxColNoSO: TNxTextColumn
        DefaultWidth = 91
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        Position = 3
        SortType = stAlphabetic
        Width = 91
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 324
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 4
        SortType = stAlphabetic
        Width = 324
      end
      object nxColQTy: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dimuat'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColBaik: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 58
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Baik'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 6
        SortType = stNumeric
        Width = 58
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColAfkir: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 58
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Afkir'
        Header.Alignment = taRightJustify
        InplaceEdit = nxBtnEdit
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 7
        SortType = stNumeric
        Width = 58
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColRetur: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Retur'
        Header.Alignment = taRightJustify
        InplaceEdit = nxBtnEdit
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 8
        SortType = stNumeric
        Width = 65
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn7: TNxTextColumn
        DefaultWidth = 68
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = '  Satuan'
        Position = 9
        SortType = stAlphabetic
        Width = 68
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dipesan'
        Header.Alignment = taRightJustify
        Position = 10
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn3: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Terkirim'
        Header.Alignment = taRightJustify
        Position = 11
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn4: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Stok G02'
        Header.Alignment = taRightJustify
        Position = 12
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColBeratTot: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Berat Total'
        Position = 13
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Position = 14
        SortType = stAlphabetic
        Width = 124
      end
      object NxTextColumn5: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan Harga'
        InplaceEdit = NxEdit3
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 15
        SortType = stAlphabetic
        Width = 124
      end
      object nxColNoPO: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. PO'
        Position = 16
        SortType = stAlphabetic
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 345
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 36
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 886
      Top = 423
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 44
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = False
      TabOrder = 10
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 530
      Top = 10
      Caption = 'Gudang Asal'
      Visible = False
    end
    object cxCmbGdg: TcxComboBox
      Left = 614
      Top = 8
      Properties.ReadOnly = True
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 2
      Visible = False
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 738
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 3
      Visible = False
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 589
      Top = 143
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'deskripsi'
        end
        item
          FieldName = 'G01'
        end
        item
          FieldName = 'G02'
        end
        item
          FieldName = 'G03'
        end
        item
          Caption = 'Total Stok'
          FieldName = 'total_stok'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBrg
      TabOrder = 24
      Visible = False
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 535
      Top = 156
      Caption = 'Nama Barang'
      Visible = False
    end
    object btnTambah: TButton
      Left = 810
      Top = 51
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 8
      Visible = False
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 249
      Top = 350
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 39
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel4: TcxLabel
      Left = 620
      Top = 120
      Caption = 'No. Dokumen'
      Visible = False
    end
    object cxtNoDok: TcxTextEdit
      Tag = 1
      Left = 704
      Top = 118
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 17
      Visible = False
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 135
      Caption = 'No. Polisi'
    end
    object cxtNopol: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 133
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 19
      Width = 145
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 160
      Caption = 'Driver'
    end
    object cxtDriver: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 158
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 27
      Width = 145
    end
    object cxLUCust: TcxLookupComboBox
      Left = 99
      Top = 108
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      TabOrder = 14
      Width = 472
    end
    object cxLabel9: TcxLabel
      Left = 500
      Top = 425
      Caption = 'No. SO'
      Visible = False
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 584
      Top = 423
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. SO'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoSO
      Properties.OnEditValueChanged = cxlNoSOPropertiesEditValueChanged
      TabOrder = 42
      Visible = False
      Width = 232
    end
    object cxChkSudahSJ: TcxCheckBox
      Left = 223
      Top = 8
      Caption = 'Sudah Buat Surat Jalan'
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 156
    end
    object cxtNoSJ: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 16
      Top = 35
      Caption = 'No. Surat Jalan'
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 111
      Caption = 'Customer'
    end
    object NxEdit3: TNxEdit
      Left = 540
      Top = 345
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 37
      Text = 'NXEDIT3'
      Visible = False
    end
    object btnCariCust: TButton
      Left = 574
      Top = 108
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 15
      OnClick = btnCariCustClick
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 185
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 183
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 29
      Width = 471
    end
    object btnAmbilKet: TButton
      Left = 16
      Top = 422
      Width = 165
      Height = 25
      Caption = 'Ambil Keterangan SO'
      TabOrder = 40
      OnClick = btnAmbilKetClick
    end
    object btnShowMemo: TButton
      Left = 572
      Top = 183
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 30
      OnClick = btnShowMemoClick
    end
    object cxMemo2: TcxMemo
      Left = 99
      Top = 236
      Properties.CharCase = ecUpperCase
      TabOrder = 33
      OnExit = cxMemo2Exit
      Height = 86
      Width = 471
    end
    object nxBtnEdit: TNxButtonEdit
      Left = 665
      Top = 315
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 34
      ReadOnly = True
      Visible = False
      OnButtonClick = nxBtnEditButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxLabel12: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Tgl. Renc. Kirim'
    end
    object cxdTglRencKirim: TcxDateEdit
      Left = 99
      Top = 83
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = cxdTglRencKirimPropertiesEditValueChanged
      TabOrder = 12
      Width = 121
    end
    object ListBox1: TListBox
      Left = 840
      Top = 55
      Width = 151
      Height = 131
      ItemHeight = 13
      TabOrder = 9
      Visible = False
    end
    object Button1: TButton
      Left = 840
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 6
      Visible = False
      OnClick = Button1Click
    end
    object cxlArmada: TcxLookupComboBox
      Left = 99
      Top = 133
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'nopol'
      Properties.ListColumns = <
        item
          Caption = 'Nopol'
          FieldName = 'nopol'
        end
        item
          Caption = 'Merk'
          FieldName = 'merk'
        end>
      Properties.ListSource = dsArmada
      TabOrder = 18
      Width = 145
    end
    object cxlDriver: TcxLookupComboBox
      Left = 99
      Top = 158
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'nama'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end>
      Properties.ListSource = dsSopir
      TabOrder = 26
      Width = 145
    end
    object cxChkSopirLuar: TcxCheckBox
      Left = 248
      Top = 134
      Caption = 'Sopir Luar'
      TabOrder = 21
      OnClick = cxChkSopirLuarClick
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 379
      Top = 135
      Caption = 'Ongkos Kirim'
    end
    object cxsOngkir: TcxSpinEdit
      Left = 451
      Top = 133
      Properties.DisplayFormat = '#,##0.00'
      TabOrder = 20
      Width = 121
    end
    object cxChkPPN: TcxCheckBox
      Left = 833
      Top = 449
      Caption = ' PPN'
      TabOrder = 47
      OnClick = cxChkPPNClick
      Width = 48
    end
    object cxsPPN: TcxSpinEdit
      Left = 886
      Top = 447
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.MaxValue = 20.000000000000000000
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 46
      Value = 10.000000000000000000
      Width = 47
    end
    object cxLabel14: TcxLabel
      Left = 708
      Top = 450
      Caption = '( Khusus Untuk Peletan )'
      Style.TextColor = clRed
    end
    object cxChkWhlMuat: TcxCheckBox
      Left = 223
      Top = 27
      Caption = 'WHL Sudah Muat'
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 156
    end
  end
  inherited pnlBawah: TPanel
    Top = 541
    Width = 1002
    TabOrder = 3
    inherited btnKeluar: TButton
      Left = 376
      Top = 20
      TabOrder = 7
    end
    inherited btnBaru: TButton
      Left = 800
      Top = 10
      TabOrder = 2
    end
    inherited btnEdit: TButton
      Left = 720
      Top = 10
      TabOrder = 1
    end
    inherited btnHapus: TButton
      Left = 640
      Top = 10
      TabOrder = 0
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 93
      Top = 20
      Caption = 'SPMB Baru'
      TabOrder = 4
      Visible = True
    end
    inherited btnSimpan: TButton
      Top = 20
      TabOrder = 3
    end
    object btnCetakSJ: TButton
      Left = 274
      Top = 20
      Width = 100
      Height = 25
      Caption = 'Cetak Surat Jalan'
      TabOrder = 6
      OnClick = btnCetakSJClick
    end
    object btnCetakSPMB: TButton
      Left = 171
      Top = 20
      Width = 100
      Height = 25
      Caption = 'Cetak SPMB'
      TabOrder = 5
      OnClick = btnCetakSPMBClick
    end
    object btnHapusSPMB: TButton
      Left = 456
      Top = 20
      Width = 135
      Height = 25
      Caption = 'Pembatalan SPMB'
      TabOrder = 8
      OnClick = btnHapusSPMBClick
    end
  end
  object pnlMemo: TPanel
    Left = 966
    Top = 102
    Width = 446
    Height = 321
    Caption = 'pnlMemo'
    Color = clSkyBlue
    TabOrder = 2
    Visible = False
    object btnSimpanKet: TButton
      Left = 10
      Top = 285
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 1
      OnClick = btnSimpanKetClick
    end
    object btnBatalMemo: TButton
      Left = 90
      Top = 285
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
      OnClick = btnBatalMemoClick
    end
    object cxMemo: TcxMemo
      Left = 10
      Top = 10
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      OnExit = cxMemoExit
      Height = 266
      Width = 426
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 500
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 530
    Top = 91
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM t' +
        'bl_spmb_head a '
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode '
      
        'WHERE no_bukti NOT IN (SELECT no_spmb FROM tbl_sj_head) and a.f_' +
        'hapus=0'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 280
    Top = 21
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 310
    Top = 21
  end
  object zqrNoSO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal FROM v_so_head WHERE kode_customer = :k' +
        'ode_customer'
      'ORDER BY tanggal DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 565
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 595
    Top = 91
  end
  object zqrArmada: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nopol, merk FROM tbl_armada')
    Params = <>
    Left = 585
    Top = 26
  end
  object dsArmada: TDataSource
    DataSet = zqrArmada
    Left = 615
    Top = 26
  end
  object zqrSopir: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_sopir ORDER BY nama')
    Params = <>
    Left = 525
    Top = 31
  end
  object dsSopir: TDataSource
    DataSet = zqrSopir
    Left = 555
    Top = 31
  end
  object zqrCekSOPlt: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.kode_brg, a.qty, '
      
        'sum(b.qty) qty_sj, sum(b.qty_baik) qty_baik, sum(b.qty_afkir) qt' +
        'y_afkir, sum(b.qty_retur) qty_retur,'
      
        'sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_afkir), sum(b.qty' +
        '_retur), aa.susut, a.qty) plusminus,'
      
        'a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_afkir), s' +
        'um(b.qty_retur), aa.susut, a.qty) qty_net,'
      
        'a.qty - (a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_' +
        'afkir), sum(b.qty_retur), aa.susut, a.qty)) selisih,'
      
        'if(a.qty - (a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.q' +
        'ty_afkir), sum(b.qty_retur), aa.susut, a.qty)) < 0.1,'#39'C'#39','#39'U'#39') st' +
        'atus'
      'from tbl_so_det a '
      'inner join tbl_so_head aa on a.no_bukti = aa.no_bukti'
      
        'left join tbl_sj_det b on a.no_bukti = b.no_so and a.kode_brg = ' +
        'b.kode_brg'
      'where left(a.no_bukti,3) = '#39'SPL'#39' and a.no_bukti = :no_bukti'
      'group by a.no_bukti, a.kode_brg, a.qty, aa.susut;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 965
    Top = 562
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 410
    Top = 10
  end
end
