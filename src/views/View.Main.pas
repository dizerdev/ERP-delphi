unit View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Menus,
  Vcl.Buttons,
  Vcl.NumberBox, Vcl.Imaging.pngimage;

type
  TViewMain = class(TForm)
    pnlMenu: TPanel;
    pnlFooter: TPanel;
    pnlContent: TPanel;
    pnlHeader: TPanel;
    pnlLogo: TPanel;
    lblNameCompany: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    pnlDataMenu: TPanel;
    btnClient: TSpeedButton;
    btnProducts: TSpeedButton;
    btnClose: TSpeedButton;
    btnPartners: TSpeedButton;
    btnStock: TSpeedButton;
    btnControl: TSpeedButton;
    btnSettings: TSpeedButton;
    pnlShapeMenu: TPanel;
    pnlLineMenu: TPanel;
    numBoxA: TNumberBox;
    numBoxB: TNumberBox;
    btnSomar: TButton;
    lblCalcNumB: TLabel;
    lblCalcNumA: TLabel;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    lblCalcTitle: TLabel;
    lblResultado: TLabel;
    edtName: TEdit;
    edtLastName: TEdit;
    edtEmail: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnRegister: TButton;
    lblMessageRegister: TLabel;
    lblStatusRegister: TLabel;
    lblInstructions: TLabel;
    edtTaskItem: TEdit;
    listBoxTasks: TListBox;
    btnAddTask: TButton;
    btnRemoveTask: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label9: TLabel;
    procedure btnClientClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPartnersClick(Sender: TObject);
    procedure btnStockClick(Sender: TObject);
    procedure btnControlClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GET_lineMenu(Sender: TObject);
    procedure lblNameCompanyMouseEnter(Sender: TObject);
    procedure lblNameCompanyMouseLeave(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnAddTaskClick(Sender: TObject);
    procedure btnRemoveTaskClick(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewMain: TViewMain;

implementation

{$R *.dfm}

procedure TViewMain.GET_lineMenu(Sender: TObject);
begin
  pnlShapeMenu.Left     := 0;
  pnlShapeMenu.Height   := TSpeedButton(Sender).Height;
  pnlShapeMenu.Top      := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewMain.lblNameCompanyMouseEnter(Sender: TObject);
begin
  lblNameCompany.Font.Color := clSkyBlue;
end;

procedure TViewMain.lblNameCompanyMouseLeave(Sender: TObject);
begin
  lblNameCompany.Font.Color := clWhite;
end;

procedure TViewMain.Panel1MouseEnter(Sender: TObject);
begin
  Panel1.Color := clSkyBlue;
end;

procedure TViewMain.Panel1MouseLeave(Sender: TObject);
begin
  Panel1.Color := clActiveCaption;
end;

procedure TViewMain.btnClientClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;

procedure TViewMain.btnProductsClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;

procedure TViewMain.btnRegisterClick(Sender: TObject);
var
  nome, sobrenome, email: String;
begin
  nome := edtName.Text;
  sobrenome := edtLastName.Text;
  email := edtEmail.Text;
  lblStatusRegister.Caption   := 'Cadastro realizado com sucesso!';
  lblMessageRegister.Caption  := 'Seja bem vindo, ' + nome + ' ' + sobrenome + '!';
  lblInstructions.Caption     := 'Um email foi enviado para: ' + email;
  edtName.Text := '';
  edtLastName.Text := '';
  edtEmail.Text := '';
end;



procedure TViewMain.btnPartnersClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;

procedure TViewMain.btnStockClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;

procedure TViewMain.btnControlClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;

procedure TViewMain.btnSettingsClick(Sender: TObject);
begin
  GET_lineMenu(Sender);
end;


procedure TViewMain.btnDividirClick(Sender: TObject);
var
  numA, numB, resultado: Double;

begin
  numA := numBoxA.Value;
  numB := numBoxB.Value;
  resultado := numA / numB;
  lblResultado.Caption := 'Resultado: ' + FloatToStr(resultado);
end;

procedure TViewMain.btnMultiplicarClick(Sender: TObject);
var
  numA, numB, resultado: Double;

begin
  numA := numBoxA.Value;
  numB := numBoxB.Value;
  resultado := numA * numB;
  lblResultado.Caption := 'Resultado: ' + FloatToStr(resultado);
end;

procedure TViewMain.btnSubtrairClick(Sender: TObject);
var
  numA, numB, resultado: Double;

begin
  numA := numBoxA.Value;
  numB := numBoxB.Value;
  resultado := numA - numB;
  lblResultado.Caption := 'Resultado: ' + FloatToStr(resultado);
end;

procedure TViewMain.btnSomarClick(Sender: TObject);
var
  numA, numB, resultado: Double;

begin
  numA := numBoxA.Value;
  numB := numBoxB.Value;
  resultado := numA + numB;
  lblResultado.Caption := 'Resultado: ' + FloatToStr(resultado);
end;


procedure TViewMain.btnAddTaskClick(Sender: TObject);
var
  taskItem: String;
begin
  taskItem := edtTaskItem.Text;
  listBoxTasks.Items.Add(taskItem);
  edtTaskItem.Text := '';
end;

procedure TViewMain.btnRemoveTaskClick(Sender: TObject);
begin
  listBoxTasks.Items.Delete(0);
end;



procedure TViewMain.FormShow(Sender: TObject);
begin
  GET_lineMenu(btnClient);
end;

procedure TViewMain.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
