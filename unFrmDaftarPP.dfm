inherited frmDaftarPP: TfrmDaftarPP
  Left = 618
  Top = 209
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Permintaan Pembelian'
  ClientHeight = 579
  ClientWidth = 860
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 860
    inherited lblJudul: TLabel
      Left = 10
      Top = 11
      Width = 243
      Caption = 'Daftar Permintaan Pembelian'
    end
    object cxLabel1: TcxLabel
      Left = 9
      Top = 37
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 60
      Top = 36
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 185
      Top = 37
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 36
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 342
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Width = 860
    Height = 437
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 858
      Height = 435
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
        DataController.DataSource = dsDaftarPP
        DataController.KeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxGridDBTableView1f_app: TcxGridDBColumn
          Caption = 'Approve'
          DataBinding.FieldName = 'f_app'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Width = 37
        end
        object cxGridDBTableView1f_po: TcxGridDBColumn
          Caption = 'PO'
          DataBinding.FieldName = 'f_po'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 30
        end
        object cxGridDBTableView1f_void: TcxGridDBColumn
          Caption = 'V'
          DataBinding.FieldName = 'f_void'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 21
        end
        object cxGridDBTableView1no_bukti: TcxGridDBColumn
          Caption = 'No.Bukti'
          DataBinding.FieldName = 'no_bukti'
          Width = 104
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxGridDBTableView1tgl_diperlukan: TcxGridDBColumn
          Caption = 'Tgl.Diperlukan'
          DataBinding.FieldName = 'tgl_diperlukan'
          Width = 87
        end
        object cxGridDBTableView1jam: TcxGridDBColumn
          DataBinding.FieldName = 'jam'
          Visible = False
        end
        object cxGridDBTableView1diajukan_oleh: TcxGridDBColumn
          Caption = 'Diajukan Oleh'
          DataBinding.FieldName = 'diajukan_oleh'
          Width = 140
        end
        object cxGridDBTableView1diajukan_dept: TcxGridDBColumn
          DataBinding.FieldName = 'diajukan_dept'
          Visible = False
        end
        object cxGridDBTableView1level_kebutuhan: TcxGridDBColumn
          DataBinding.FieldName = 'level_kebutuhan'
          Visible = False
          Width = 84
        end
        object cxGridDBTableView1user: TcxGridDBColumn
          DataBinding.FieldName = 'user'
          Visible = False
        end
        object cxGridDBTableView1user_dept: TcxGridDBColumn
          DataBinding.FieldName = 'user_dept'
          Visible = False
        end
        object cxGridDBTableView1tgl_input: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_input'
          Visible = False
        end
        object cxGridDBTableView1f_penawaran: TcxGridDBColumn
          DataBinding.FieldName = 'f_penawaran'
          Visible = False
        end
        object cxGridDBTableView1tgl_app: TcxGridDBColumn
          Caption = 'Tgl.Approve'
          DataBinding.FieldName = 'tgl_app'
          Width = 136
        end
        object cxGridDBTableView1user_app: TcxGridDBColumn
          Caption = 'User Approve'
          DataBinding.FieldName = 'user_app'
        end
        object cxGridDBTableView1f_app_gm: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_gm'
          Visible = False
        end
        object cxGridDBTableView1tgl_app_gm: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_app_gm'
          Visible = False
        end
        object cxGridDBTableView1user_app_gm: TcxGridDBColumn
          DataBinding.FieldName = 'user_app_gm'
          Visible = False
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPPdet
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGrid2DBTableView1no_bukti: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGrid2DBTableView1kode_brg: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGrid2DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGrid2DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGrid2DBTableView1mata_uang: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 503
    Width = 860
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 762
      Visible = False
    end
    inherited btnBaru: TButton
      Left = 15
      Top = 30
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 95
      Top = 30
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 175
      Top = 30
      Caption = '&Void'
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 255
      Top = 30
      Caption = '&Unapprove'
      Visible = True
    end
    inherited btnSimpan: TButton
      Left = 335
      Top = 30
      Caption = '&Cetak'
    end
  end
  object zqrDaftarPP: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.*  FROM tbl_fobj_head as a'
      'WHERE (a.tanggal BETWEEN :tgl1 AND :tgl2) ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 470
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsDaftarPP: TDataSource
    DataSet = zqrDaftarPP
    Left = 500
    Top = 30
  end
  object zPPDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a. *,b.deskripsi FROM tbl_fobj_det as a join tbl_barang a' +
        's b on a.kode_brg=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsPPdet: TDataSource
    DataSet = zPPDet
    Left = 576
    Top = 20
  end
end
