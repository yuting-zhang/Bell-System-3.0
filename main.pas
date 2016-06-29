unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, Spin, ComCtrls, Grids, MPlayer,
  Mask, Registry;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Settings1: TMenuItem;
    BasicSettings1: TMenuItem;
    LessonsSettings1: TMenuItem;
    MusicSettings1: TMenuItem;
    Desktop: TImage;
    BSGroupBox: TGroupBox;
    LASGroupBox: TGroupBox;
    MondayAmount: TLabel;
    TuesdayAmount: TLabel;
    WednesdayAmount: TLabel;
    ThursdayAmount: TLabel;
    SaturdayAmount: TLabel;
    SundayAmount: TLabel;
    FridayAmount: TLabel;
    SunEdit: TSpinEdit;
    MonEdit: TSpinEdit;
    TuesEdit: TSpinEdit;
    WedEdit: TSpinEdit;
    ThurEdit: TSpinEdit;
    FriEdit: TSpinEdit;
    SatEdit: TSpinEdit;
    SSGroupBox: TGroupBox;
    StartUpBox: TCheckBox;
    LanguageBox: TComboBox;
    LanguageLable: TLabel;
    BSConfirm: TButton;
    BSCancel: TButton;
    LSGroupBox: TGroupBox;
    SubjectGroupBox: TGroupBox;
    SubListBox: TListBox;
    SSNew: TButton;
    SSDelete: TButton;
    TableTab: TTabControl;
    TableBox: TScrollBox;
    LSReturn: TButton;
    Lesson1Label: TLabel;
    Lesson1Box: TComboBox;
    Lesson2Label: TLabel;
    Lesson3Label: TLabel;
    Lesson4Label: TLabel;
    Lesson5Label: TLabel;
    Lesson6Label: TLabel;
    Lesson7Label: TLabel;
    Lesson8Label: TLabel;
    Lesson9Label: TLabel;
    Lesson10Label: TLabel;
    Lesson11Label: TLabel;
    Lesson12Label: TLabel;
    Lesson13Label: TLabel;
    Lesson14Label: TLabel;
    Lesson15Label: TLabel;
    Lesson16Label: TLabel;
    Lesson17Label: TLabel;
    Lesson18Label: TLabel;
    Lesson19Label: TLabel;
    Lesson20Label: TLabel;
    Lesson2Box: TComboBox;
    Lesson3Box: TComboBox;
    Lesson4Box: TComboBox;
    Lesson5Box: TComboBox;
    Lesson6Box: TComboBox;
    Lesson7Box: TComboBox;
    Lesson8Box: TComboBox;
    Lesson9Box: TComboBox;
    Lesson10Box: TComboBox;
    Lesson11Box: TComboBox;
    Lesson12Box: TComboBox;
    Lesson13Box: TComboBox;
    Lesson14Box: TComboBox;
    Lesson15Box: TComboBox;
    Lesson16Box: TComboBox;
    Lesson17Box: TComboBox;
    Lesson18Box: TComboBox;
    Lesson19Box: TComboBox;
    Lesson20Box: TComboBox;
    MSGroupBox: TGroupBox;
    SubSelect: TComboBox;
    MusicOpener: TOpenDialog;
    MusicButton: TButton;
    Address: TEdit;
    TryMusic: TButton;
    Musicplayer: TMediaPlayer;
    MSReturn: TButton;
    MSSS: TLabel;
    MSSM: TLabel;
    MSNew: TButton;
    MSType: TComboBox;
    SubMemo: TMemo;
    TypeMemo: TMemo;
    PathMemo: TMemo;
    TTGroupBox: TGroupBox;
    imeTableSettings1: TMenuItem;
    TTTab: TTabControl;
    TTBox: TScrollBox;
    TTLesson1: TLabel;
    TTS1: TLabel;
    TTE1: TLabel;
    TTSE1: TMaskEdit;
    TTEE1: TMaskEdit;
    TTLesson2: TLabel;
    TTLesson3: TLabel;
    TTLesson4: TLabel;
    TTLesson5: TLabel;
    TTLesson6: TLabel;
    TTLesson7: TLabel;
    TTLesson8: TLabel;
    TTLesson9: TLabel;
    TTLesson10: TLabel;
    TTLesson11: TLabel;
    TTLesson12: TLabel;
    TTLesson13: TLabel;
    TTLesson14: TLabel;
    TTLesson16: TLabel;
    TTLesson15: TLabel;
    TTLesson18: TLabel;
    TTLesson17: TLabel;
    TTLesson19: TLabel;
    TTLesson20: TLabel;
    TTS2: TLabel;
    TTS3: TLabel;
    TTS4: TLabel;
    TTS5: TLabel;
    TTS6: TLabel;
    TTS7: TLabel;
    TTS8: TLabel;
    TTS9: TLabel;
    TTS10: TLabel;
    TTS11: TLabel;
    TTS12: TLabel;
    TTS13: TLabel;
    TTS14: TLabel;
    TTS15: TLabel;
    TTS16: TLabel;
    TTS17: TLabel;
    TTS18: TLabel;
    TTS19: TLabel;
    TTS20: TLabel;
    TTSE2: TMaskEdit;
    TTSE3: TMaskEdit;
    TTSE4: TMaskEdit;
    TTSE5: TMaskEdit;
    TTSE6: TMaskEdit;
    TTSE7: TMaskEdit;
    TTE2: TLabel;
    TTE8: TLabel;
    TTE3: TLabel;
    TTE4: TLabel;
    TTE5: TLabel;
    TTE6: TLabel;
    TTE7: TLabel;
    TTE13: TLabel;
    TTE9: TLabel;
    TTE12: TLabel;
    TTE10: TLabel;
    TTE11: TLabel;
    TTE14: TLabel;
    TTE15: TLabel;
    TTE16: TLabel;
    TTEE2: TMaskEdit;
    TTEE3: TMaskEdit;
    TTEE4: TMaskEdit;
    TTEE5: TMaskEdit;
    TTEE6: TMaskEdit;
    TTEE7: TMaskEdit;
    TTE17: TLabel;
    TTE18: TLabel;
    TTE19: TLabel;
    TTE20: TLabel;
    TTSE8: TMaskEdit;
    TTSE9: TMaskEdit;
    TTSE10: TMaskEdit;
    TTSE11: TMaskEdit;
    TTEE8: TMaskEdit;
    TTEE9: TMaskEdit;
    TTEE10: TMaskEdit;
    TTEE11: TMaskEdit;
    TTEE12: TMaskEdit;
    TTEE13: TMaskEdit;
    TTEE14: TMaskEdit;
    TTEE15: TMaskEdit;
    TTEE16: TMaskEdit;
    TTEE17: TMaskEdit;
    TTSE12: TMaskEdit;
    TTSE13: TMaskEdit;
    TTSE14: TMaskEdit;
    TTSE15: TMaskEdit;
    TTSE16: TMaskEdit;
    TTSE17: TMaskEdit;
    TTSE18: TMaskEdit;
    TTSE19: TMaskEdit;
    TTSE20: TMaskEdit;
    TTEE18: TMaskEdit;
    TTEE19: TMaskEdit;
    TTEE20: TMaskEdit;
    Start1: TMenuItem;
    Timer1: TTimer;
    TTReturn: TButton;
    MSBOX: TScrollBox;
    Hide1: TMenuItem;
    ResetAllSettings1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BasicSettings1Click(Sender: TObject);
    procedure BSCancelClick(Sender: TObject);
    procedure BSConfirmClick(Sender: TObject);
    procedure SunEditChange(Sender: TObject);
    procedure MonEditChange(Sender: TObject);
    procedure TuesEditChange(Sender: TObject);
    procedure WedEditChange(Sender: TObject);
    procedure ThurEditChange(Sender: TObject);
    procedure FriEditChange(Sender: TObject);
    procedure SatEditChange(Sender: TObject);
    procedure LessonsSettings1Click(Sender: TObject);
    procedure SSDeleteClick(Sender: TObject);
    procedure SSNewClick(Sender: TObject);
    procedure LSReturnClick(Sender: TObject);
    procedure TableTabChange(Sender: TObject);
    procedure Lesson1BoxChange(Sender: TObject);
    procedure Lesson2BoxChange(Sender: TObject);
    procedure Lesson3BoxChange(Sender: TObject);
    procedure Lesson4BoxChange(Sender: TObject);
    procedure Lesson5BoxChange(Sender: TObject);
    procedure Lesson6BoxChange(Sender: TObject);
    procedure Lesson7BoxChange(Sender: TObject);
    procedure Lesson8BoxChange(Sender: TObject);
    procedure Lesson9BoxChange(Sender: TObject);
    procedure Lesson10BoxChange(Sender: TObject);
    procedure Lesson11BoxChange(Sender: TObject);
    procedure Lesson12BoxChange(Sender: TObject);
    procedure Lesson13BoxChange(Sender: TObject);
    procedure Lesson14BoxChange(Sender: TObject);
    procedure Lesson15BoxChange(Sender: TObject);
    procedure Lesson16BoxChange(Sender: TObject);
    procedure Lesson17BoxChange(Sender: TObject);
    procedure Lesson18BoxChange(Sender: TObject);
    procedure Lesson19BoxChange(Sender: TObject);
    procedure Lesson20BoxChange(Sender: TObject);
    procedure MusicSettings1Click(Sender: TObject);
    procedure MusicButtonClick(Sender: TObject);
    procedure TryMusicClick(Sender: TObject);
    procedure MSReturnClick(Sender: TObject);
    procedure MSNewClick(Sender: TObject);
    procedure imeTableSettings1Click(Sender: TObject);
    procedure TTTabChange(Sender: TObject);
    procedure TTSE1Change(Sender: TObject);
    procedure Start1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TTReturnClick(Sender: TObject);
    procedure Hide1Click(Sender: TObject);
    procedure ResetAllSettings1Click(Sender: TObject);
    procedure SubSelectChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Sun,Mon,Tues,Wed,Thur,Fri,Sat:integer;
  BSChanged,TTInt:boolean;
  a:array[1..7,1..20] of string;

implementation

{$R *.dfm}

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Reg:TRegistry;
  f1:Textfile;
begin
  Reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',true);
  if Reg.ValueExists('BellSystem') then
    StartUpBox.Checked:=True
  else
    StartUpBox.Checked:=False;
  Reg.CloseKey;
  assignfile(f1,'SecurityCheck.BSSC');
  rewrite(f1);
  writeln(f1,'1');
  Closefile(f1);
  LSGroupBox.Hide;
  BSGroupBox.Hide;
  MSGroupBox.Hide;
  TTGroupBox.Hide;
  assignfile(f1,'Data\BasicSettings.BS');
  Reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
end;

procedure IntBSG;
  var f1:TextFile;
  begin
    Assignfile(f1,'Data\BasicSettings.BS');
    Reset(f1);
    Readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
    Closefile(f1);
  end;

procedure TMainForm.BasicSettings1Click(Sender: TObject);
begin
  Musicplayer.Close;
  MSGroupBox.Hide;
  LSGroupBox.Hide;
  TTGroupBox.Hide;
  Desktop.Hide;
  IntBSG;
  SunEdit.Value:=Sun;
  MonEdit.Value:=Mon;
  TuesEdit.Value:=Tues;
  WedEdit.Value:=Wed;
  ThurEdit.Value:=Thur;
  FriEdit.Value:=Fri;
  SatEdit.Value:=Sat;
  BSChanged:=False;
  BSGroupBox.Show;
end;

procedure TMainForm.BSCancelClick(Sender: TObject);
begin
  if not(BSChanged) then
    begin
      BSGroupBox.Hide;
      Desktop.Show;
    end
  else
    if(MessageDlg('Are You Sure That You Want to Quit Without Modification?',
       MtConfirmation,[MbYes,MbNo],0)=mrYes) then
      begin
        BSGroupBox.Hide;
        Desktop.Show;
      end;
end;

procedure TMainForm.BSConfirmClick(Sender: TObject);
var
  f1:Textfile;
  Reg:TRegistry;
begin
  Sun:=SunEdit.Value;
  Mon:=MonEdit.Value;
  Tues:=TuesEdit.Value;
  Wed:=WedEdit.Value;
  Thur:=ThurEdit.Value;
  Fri:=FriEdit.Value;
  Sat:=SatEdit.Value;
  if StartupBox.Checked then
    begin
      Reg:=TRegistry.Create;
      Reg.RootKey:=HKEY_LOCAL_MACHINE;
      Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',true);
      if not(Reg.ValueExists('BellSystem')) then
        Reg.WriteString('BellSystem',ExtractFilePath(Application.Exename)+'BellSystem.lnk');
      Reg.CloseKey;
    end
  else
    begin
      Reg:=TRegistry.Create;
      Reg.RootKey:=HKEY_LOCAL_MACHINE;
      Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',true);
      if Reg.ValueExists('BellSystem') then
        Reg.DeleteValue('BellSystem');
      Reg.CloseKey;
    end;
  Assignfile(f1,'Data\BasicSettings.BS');
  Rewrite(f1);
  writeln(f1,Sun,' ',Mon,' ',Tues,' ',Wed,' ',Thur,' ',Fri,' ',Sat);
  Closefile(f1);
  ShowMessage('Data Modified Successfully!');
  BSGroupBox.Hide;
  Desktop.Show;
end;

procedure TMainForm.SunEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.MonEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.TuesEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.WedEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.ThurEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.FriEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.SatEditChange(Sender: TObject);
begin
  BSChanged:=True;
end;

procedure TMainForm.LessonsSettings1Click(Sender: TObject);
var
  f1:Textfile;
  st:string;
  temp,i,j:integer;
begin
  Musicplayer.Close;
  MSGroupBox.Hide;
  TTGroupBox.Hide;
  if BSGroupBox.Showing then
    begin
      if not(BSChanged) then
        begin
          BSGroupBox.Hide;
          LSGroupBox.Show;
        end
      else
        if(MessageDlg('Are You Sure That You Want to Quit Without Modification?',
          MtConfirmation,[MbYes,MbNo],0)=mrYes) then
            begin
              BSGroupBox.Hide;
              LSGroupBox.Show;
            end;
    end
  else
    LSGroupBox.Show;
  if LSGroupBox.Showing then
    begin
      TableTab.TabIndex:=0;
      SubListBox.Items.Clear;
      AssignFile(f1,'Data\Subjects.BS');
      Reset(f1);
      while not(eof(f1)) do
        begin
          readln(f1,st);
          SubListBox.Items.Add(st);
        end;
      Closefile(f1);

      //Int ComboBox
      AssignFile(f1,'Data\BasicSettings.BS');
      Reset(f1);
      readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
      Closefile(f1);
      AssignFIle(f1,'Data\Sun.BS');
      Reset(f1);
      temp:=0;
      while not(eof(F1)) do
        begin
          inc(temp);
          readln(f1,a[1,temp]);
        end;
      Closefile(f1);
      for i:=1 to 20 do
        begin
          TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=false;
          TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Clear;
        end;
      for i:=1 to sun do
        TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=True;
      for i:=1 to sun do
        for j:=0 to SubListBox.Items.Count-1 do
          TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Add(SubListBox.Items.Strings[j]);
      for i:=1 to temp do
        TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).ItemIndex:=SubListBox.Items.IndexOf(a[1,i]);
    end;
end;

procedure TMainForm.SSDeleteClick(Sender: TObject);
var
  f1:Textfile;
  i,temp,j:integer;
begin
  SubListBox.DeleteSelected;
  TableTab.TabIndex:=0;
  Assignfile(f1,'Data\Subjects.BS');
  Rewrite(f1);
  for i:=0 to SubListBox.Items.Count-1 do
    writeln(f1, SubListBox.Items.Strings[i]);
  Closefile(f1);
  AssignFile(f1,'Data\BasicSettings.BS');
  Reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
  AssignFIle(f1,'Data\Sun.BS');
  Reset(f1);
  temp:=0;
  while not(eof(F1)) do
    begin
      inc(temp);
      readln(f1,a[1,temp]);
    end;
  Closefile(f1);
  for i:=1 to 20 do
    begin
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=false;
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Clear;
    end;
  for i:=1 to sun do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=True;
  for i:=1 to sun do
    for j:=0 to SubListBox.Items.Count-1 do
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Add(SubListBox.Items.Strings[j]);
  for i:=1 to temp do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).ItemIndex:=SubListBox.Items.IndexOf(a[1,i]);

  //Update MusicView
  
end;

procedure TMainForm.SSNewClick(Sender: TObject);
var
  f1:Textfile;
  st:string;
  i,temp,j:integer;
  same:boolean;
begin
  same:=false;
  st:=inputbox('New Subject','Please Input the Name of the New Subject','');
  for i:=0 to SubListBox.Items.Count-1 do
    if st=SubListBox.Items.Strings[i] then
      begin
        same:=true;
        break;
      end;
  if not(same) then
    begin
      SubListBox.Items.Add(st);
      Assignfile(f1,'Data\Subjects.BS');
      Rewrite(f1);
      for i:=0 to SubListBox.Items.Count-1 do
        writeln(f1, SubListBox.Items.Strings[i]);
      Closefile(f1);
    end
  else
    ShowMessage('This Subject has Already Existed');
  TableTab.TabIndex:=0;
  AssignFile(f1,'Data\BasicSettings.BS');
  Reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
  AssignFIle(f1,'Data\Sun.BS');
  Reset(f1);
  temp:=0;
  while not(eof(F1)) do
    begin
      inc(temp);
      readln(f1,a[1,temp]);
    end;
  Closefile(f1);
  for i:=1 to 20 do
    begin
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=false;
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Clear;
    end;
  for i:=1 to sun do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=True;
  for i:=1 to sun do
    for j:=0 to SubListBox.Items.Count-1 do
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Add(SubListBox.Items.Strings[j]);
  for i:=1 to temp do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).ItemIndex:=SubListBox.Items.IndexOf(a[1,i]);
end;

procedure TMainForm.LSReturnClick(Sender: TObject);
begin
  LSGroupBox.Hide;
  Desktop.Show;
end;

procedure TMainForm.TableTabChange(Sender: TObject);
var
  i,j,temp:integer;
  f1:Textfile;
  Tabname:string;
  Tabindex,ClassAmount:integer;
begin
  TabIndex:=0;
  ClassAmount:=0;
  TableBox.VertScrollBar.Position:=0;
  AssignFile(f1,'Data\BasicSettings.BS');
  Reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
  case TableTab.TabIndex of
    0:begin Tabname:='Sun';Tabindex:=1;ClassAmount:=Sun;end;
    1:begin Tabname:='Mon';Tabindex:=2;ClassAmount:=Mon;end;
    2:begin Tabname:='Tues';Tabindex:=3;ClassAmount:=Tues;end;
    3:begin Tabname:='Wed';Tabindex:=4;ClassAmount:=Wed;end;
    4:begin Tabname:='Thur';Tabindex:=5;ClassAmount:=Thur;end;
    5:begin Tabname:='Fri';Tabindex:=6;ClassAmount:=Fri;end;
    6:begin Tabname:='Sat';Tabindex:=7;ClassAmount:=Sat;end;
  end;
  AssignFIle(f1,'Data\'+Tabname+'.BS');
  Reset(f1);
  temp:=0;
  while not(eof(F1)) do
    begin
      inc(temp);
      readln(f1,a[Tabindex,temp]);
    end;
  Closefile(f1);
  for i:=1 to 20 do
    begin
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=false;
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Clear;
    end;
  for i:=1 to ClassAmount do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Enabled:=True;
  for i:=1 to ClassAmount do
    for j:=0 to SubListBox.Items.Count-1 do
      TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Items.Add(SubListBox.Items.Strings[j]);
  for i:=1 to temp do
    TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).ItemIndex:=SubListBox.Items.IndexOf(a[TabIndex,i]);
end;

procedure TMainForm.Lesson1BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson2BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson3BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson4BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson5BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson6BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson7BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson8BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson9BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson10BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson11BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson12BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson13BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson14BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson15BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson16BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson17BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson18BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson19BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.Lesson20BoxChange(Sender: TObject);
var
  f1:Textfile;
  filename:string;
  i,classamount:integer;
begin
  ClassAmount:=0;
  case TableTab.TabIndex of
    0:begin;filename:='Sun';classamount:=Sun;end;
    1:begin;filename:='Mon';classamount:=Mon;end;
    2:begin;filename:='Tues';classamount:=Tues;end;
    3:begin;filename:='Wed';classamount:=Wed;end;
    4:begin;filename:='Thur';classamount:=Thur;end;
    5:begin;filename:='Fri';classamount:=Fri;end;
    6:begin;filename:='Sat';classamount:=Sat;end;
  end;
  Assignfile(f1,'Data\'+filename+'.BS');
  Rewrite(f1);
  for i:=1 to classamount do
    writeln(f1,TCombobox(Findcomponent('Lesson'+inttostr(i)+'Box')).Text);
  Closefile(f1);
end;

procedure TMainForm.MusicSettings1Click(Sender: TObject);
var
  f1:Textfile;
  st:string;
  subst,typest,pathst:string;
begin
  Musicplayer.Close;
  TTGroupBox.Hide;
  LSGroupBox.Hide;
  if BSGroupBox.Showing then
    begin
      if not(BSChanged) then
        begin
          BSGroupBox.Hide;
          MSGroupBox.Show;
        end
      else
        if(MessageDlg('Are You Sure That You Want to Quit Without Modification?',
          MtConfirmation,[MbYes,MbNo],0)=mrYes) then
            begin
              BSGroupBox.Hide;
              MSGroupBox.Show;
            end;
    end
  else
    MSGroupBox.Show;
  if MSGroupBox.Showing then
    begin
      SubSelect.Items.Clear;
      Address.Text:='';
      Assignfile(f1,'Data\subjects.BS');
      Reset(f1);
      while not(eof(f1)) do
        begin
          readln(f1,st);
          SubSelect.Items.Add(st);
        end;
    Closefile(f1);
    //Int Memo
    SubMemo.Lines.Clear;
    TypeMemo.Lines.Clear;
    PathMemo.Lines.Clear;
    Assignfile(f1,'Data\musicsettings.BS');
    Reset(f1);
    while not(eof(f1)) do
      begin
        readln(f1,subst);
        readln(f1,typest);
        readln(f1,pathst);
        SubMemo.Lines.Add(subst);
        TypeMemo.Lines.Add(typest);
        PathMemo.Lines.Add(pathst);
      end;
    Closefile(f1);
  end;
end;

procedure TMainForm.MusicButtonClick(Sender: TObject);
begin
  with MusicOpener do
    if Execute then
       Address.Text:=Filename;
end;

procedure TMainForm.TryMusicClick(Sender: TObject);
begin
  Musicplayer.FileName:=Address.Text;
  if FileExists(address.Text)and((ExtractFileExt(address.Text)='.wav')or
    (ExtractFileExt(address.Text)='.mp3')) then
    begin
      Musicplayer.Open;
      Musicplayer.Play;
    end
  else
    begin
      Musicplayer.Close;
      ShowMessage('Wrong Path!');
    end;
end;

procedure TMainForm.MSReturnClick(Sender: TObject);
begin
  MSGroupBox.Hide;
  Desktop.Show;
  Musicplayer.Close;
end;

function checksame(a,b:string):boolean;
var
  f1:textfile;
  st1,st2,st:string;
begin
  checksame:=false;
  assign(f1,'data\musicsettings.bs');
  reset(f1);
  while not(eof(f1)) do
    begin
      readln(f1,st1);
      readln(f1,st2);
      readln(f1,st);
      if (st1=a)and(st2=b) then
        begin
          checksame:=true;
          break;
        end;
    end;
  closefile(f1);
end;


procedure TMainForm.MSNewClick(Sender: TObject);
var
  f1:Textfile;
  subst,typest,pathst:string;
  i:integer;
begin
  musicplayer.Close;
  if FileExists(address.Text)and(SubSelect.Text<>'') then
      begin
        subst:=SubSelect.Text;
        typest:=MSType.Text;
        pathst:=address.Text;
        if CheckSame(subst,typest) then
          begin
            if  (MessageDlg('Are You Sure that You Want to Overwrite the Music?',
              MtConfirmation,[MbYes,MbNo],0)=mrYes)
                then
                  begin
                    i:=0;
                    while (submemo.Lines[i]<>subst)or(typememo.Lines[i]<>typest) do
                      inc(i);
                    pathmemo.Lines[i]:=pathst;
                    assignfile(f1,'data\MusicSettings.BS');
                    rewrite(f1);
                    for i:=0 to submemo.Lines.Count-1 do
                      begin
                        writeln(f1,submemo.lines[i]);
                        writeln(f1,typememo.lines[i]);
                        writeln(f1,pathmemo.lines[i]);
                      end;
                    closefile(f1);
                  end
          end
        else
           begin
             assignfile(f1,'data\MusicSettings.BS');
             append(f1);
             writeln(f1,subst);
             writeln(f1,typest);
             writeln(f1,pathst);
             closefile(f1);
             SubMemo.Lines.Add(subst);
             TypeMemo.Lines.Add(typest);
             PathMemo.Lines.Add(pathst);
           end;
      end
  else
    showmessage('Subject or Music Path is WRONG!');

end;

procedure TMainForm.imeTableSettings1Click(Sender: TObject);
var
  f1:textfile;
  amount,i:integer;
  t1,t2,t3,t4,t5,t6:string;
begin
  Musicplayer.Close;
  MSGroupBox.Hide;
  LSGroupBox.Hide;
  if BSGroupBox.Showing then
    begin
      if not(BSChanged) then
        begin
          BSGroupBox.Hide;
          TTGroupBox.Show;
        end
      else
        if(MessageDlg('Are You Sure That You Want to Quit Without Modification?',
          MtConfirmation,[MbYes,MbNo],0)=mrYes) then
            begin
              BSGroupBox.Hide;
              TTGroupBox.Show;
            end;
    end
  else
    TTGroupBox.Show;
  if TTGroupBox.Showing then
    begin
      TTInt:=true;
      TTBox.VertScrollBar.Position:=0;
      TTTab.TabIndex:=0;
      assignfile(f1,'Data\BasicSettings.BS');
      Reset(f1);
      readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
      Closefile(f1);
      assignfile(f1,'Data\SunTable.BS');
      reset(f1);
      amount:=0;
      for i:=1 to 20 do
        begin
          TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Enabled:=false;
          TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Enabled:=false;
          TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Text:='000000';
          TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Text:='000000';
        end;
      for i:=1 to sun do
        begin
          TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Enabled:=true;
          TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Enabled:=true;
        end;
      while not(eof(f1)) do
        begin
          inc(amount);
          readln(f1,t1);
          readln(f1,t2);
          readln(f1,t3);
          readln(f1,t4);
          readln(f1,t5);
          readln(f1,t6);
          TMaskEdit(Findcomponent('TTSE'+inttostr(amount))).Text:=t1+t2+t3;
          TMaskEdit(Findcomponent('TTEE'+inttostr(amount))).Text:=t4+t5+t6;
        end;
      closefile(f1);
      TTInt:=false;
  end;
end;

procedure TMainForm.TTTabChange(Sender: TObject);
var
  f1:textfile;
  DayIndex,amount,i:integer;
  Dayname,t1,t2,t3,t4,t5,t6:string;
begin
  TTint:=true;
  DayIndex:=0;
  assignfile(f1,'Data\BasicSettings.BS');
  Reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
  case TTTab.TabIndex of
    0:begin DayIndex:=Sun;DayName:='Sun';end;
    1:begin DayIndex:=Mon;DayName:='Mon';end;
    2:begin DayIndex:=Tues;DayName:='Tues';end;
    3:begin DayIndex:=Wed;DayName:='Wed';end;
    4:begin DayIndex:=Thur;DayName:='Thur';end;
    5:begin DayIndex:=Fri;DayName:='Fri';end;
    6:begin DayIndex:=Sat;DayName:='Sat';end;
  end;
  TTBox.VertScrollBar.Position:=0;
  assignfile(f1,'Data\'+DayName+'Table.BS');
  reset(f1);
  amount:=0;
  for i:=1 to 20 do
    begin
      TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Enabled:=false;
      TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Enabled:=false;
      TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Text:='000000';
      TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Text:='000000';
    end;
  for i:=1 to DayIndex do
    begin
      TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Enabled:=true;
      TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Enabled:=true;
    end;
  while not(eof(f1)) do
    begin
      inc(amount);
      readln(f1,t1);
      readln(f1,t2);
      readln(f1,t3);
      readln(f1,t4);
      readln(f1,t5);
      readln(f1,t6);
      TMaskEdit(Findcomponent('TTSE'+inttostr(amount))).Text:=t1+t2+t3;
      TMaskEdit(Findcomponent('TTEE'+inttostr(amount))).Text:=t4+t5+t6;
    end;
  closefile(f1);
  TTInt:=false;
end;

procedure TMainForm.TTSE1Change(Sender: TObject);
var
  f1:Textfile;
  DayIndex,i:integer;
  DayName,st:string;
begin
  if not(TTInt) then begin
  DayIndex:=0;
  case TTTab.TabIndex of
    0:begin DayIndex:=Sun;DayName:='Sun';end;
    1:begin DayIndex:=Mon;DayName:='Mon';end;
    2:begin DayIndex:=Tues;DayName:='Tues';end;
    3:begin DayIndex:=Wed;DayName:='Wed';end;
    4:begin DayIndex:=Thur;DayName:='Thur';end;
    5:begin DayIndex:=Fri;DayName:='Fri';end;
    6:begin DayIndex:=Sat;DayName:='Sat';end;
  end;
  Assignfile(f1,'Data\'+DayName+'Table.BS');
  rewrite(f1);
  for i:=1 to DayIndex do
    begin
      st:=TMaskEdit(Findcomponent('TTSE'+inttostr(i))).Text;
      writeln(f1,copy(st,1,2));
      writeln(f1,copy(st,3,2));
      writeln(f1,copy(st,5,2));
      st:=TMaskEdit(Findcomponent('TTEE'+inttostr(i))).Text;
      writeln(f1,copy(st,1,2));
      writeln(f1,copy(st,3,2));
      writeln(f1,copy(st,5,2));
    end;
  Closefile(f1);
  end;
end;

function CheckSecurity:integer;
const
  checkname:array[1..7] of string=('Sun','Mon','Tues','Wed','Thur','Fri','Sat');
var
  sub:array[1..50]of string;
  musiccheck:array[1..50,1..2] of boolean;
  subamount,i,j,lessoncount,temp:integer;
  f1:Textfile;
  subst,typest,tempstring:string;
begin
  CHeckSecurity:=0;
  subamount:=0;
  Assignfile(f1,'Data\Subjects.BS');
  Reset(f1);
  while not(eof(f1)) do
    begin
      inc(subamount);
      readln(f1,sub[subamount]);
    end;
  Closefile(f1);
  Assignfile(f1,'Data\BasicSettings.BS');
  reset(f1);
  readln(f1,Sun,Mon,Tues,Wed,Thur,Fri,Sat);
  Closefile(f1);
  for i:=1 to 7 do
    begin
      case i of
        1:temp:=sun;
        2:temp:=Mon;
        3:temp:=Tues;
        4:temp:=Wed;
        5:temp:=Thur;
        6:temp:=Fri;
        7:temp:=Sat;
      end;
      lessoncount:=0;
      Assignfile(f1,'Data\'+checkname[i]+'.BS');
      Reset(f1);
      while not(eof(f1)) do
        begin
          inc(lessoncount);
          readln(f1,tempstring);
        end;
      if temp<>lessoncount then
        CheckSecurity:=1;
    end;
  fillchar(musiccheck,sizeof(musiccheck),false);
  Assign(f1,'Data\MusicSettings.BS');
  Reset(f1);
  while not(eof(f1)) do
    begin
      readln(f1,subst);
      readln(f1,typest);
      readln(f1,tempstring);
      for i:=1 to subamount do
        if subst=sub[i] then
          begin
            if typest='Begin' then
              musiccheck[i,1]:=True
            else
              musiccheck[i,2]:=True;
            break;
          end;
    end;
  for i:=1 to subamount do
    for j:=1 to 2 do
      if musiccheck[i,j]=false then
        CheckSecurity:=2;
end;


procedure TMainForm.Start1Click(Sender: TObject);
var
  f1:textfile;
  Error:longint;
begin
  if (BSGroupBox.Showing=false)and(LSGroupBox.Showing=false)and
    (MSGroupBox.Showing=false)and(TTGroupBox.Showing=false) then
      begin
        Error:=CheckSecurity;
        if Error=0 then
          begin
            Timer1.Enabled:=true;
            assignfile(f1,'SecurityCheck.BSSC');
            rewrite(f1);
            writeln(f1,'0');
            Closefile(f1);
            MainMenu1.Items[1].Enabled:=false;
            MainMenu1.Items[0].Items[0].Enabled:=false;
            MainMenu1.Items[0].Items[1].Enabled:=true;
            MainMenu1.Items[0].Items[2].Enabled:=false;
            showmessage('Bell System Launched Successfully!');
          end
        else
          Begin
            If Error=1 then
              showmessage('You Haven''t Finished the Lesson Settings!');
            If Error=2 then
              showmessage('You Haven''t Finished the Music Settings!');
          End;
      end
  else
   showmessage('Please Finish the Settings and Go Back to the Main Page of the Program ');
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
  f1:Textfile;
  ch:char;
  mytime:systemtime;
  week,DayIndex,i:integer;
  DayName:string;
  info:array[1..20] of string;
  h,m,s:word;
  s1,s2,s3,e1,e2,e3,count:integer;
  st1,st2,st3,ty,timestring:string;
begin
  Assignfile(f1,'SecurityCheck.BSSC');
  Reset(f1);
  Readln(f1,ch);
  Closefile(f1);
  if ch='0' then
    begin
      GetLocalTime(mytime);
      week:=0;
      case mytime.wDayOfWeek of
        0: week:=1;
        1: week:=2;
        2: week:=3;
        3: week:=4;
        4: week:=5;
        5: week:=6;
        6: week:=7;
      end;
      DayIndex:=0;
      case week of
        1:begin DayIndex:=Sun;DayName:='Sun';end;
        2:begin DayIndex:=Mon;DayName:='Mon';end;
        3:begin DayIndex:=Tues;DayName:='Tues';end;
        4:begin DayIndex:=Wed;DayName:='Wed';end;
        5:begin DayIndex:=Thur;DayName:='Thur';end;
        6:begin DayIndex:=Fri;DayName:='Fri';end;
        7:begin DayIndex:=Sat;DayName:='Sat';end;
      end;
      assignfile(f1,'Data\'+DayName+'.BS');
      Reset(f1);
      for i:=1 to DayIndex do
        readln(f1,info[i]);
      Closefile(f1);
      assignfile(f1,'Data\'+DayName+'Table.BS');
      Reset(f1);
      count:=0;
      ty:='No';
      while not(eof(f1)) do
        begin
          inc(count);
          readln(f1,s1);
          readln(f1,s2);
          readln(f1,s3);
          readln(f1,e1);
          readln(f1,e2);
          readln(f1,e3);
          timestring:=timetostr(time);
          while (ord(timestring[1])<48) or (ord(timestring[1])>57) do
            timestring:=copy(timestring,2,length(timestring)-1);
          if timestring[3]=':' then
            begin
              s:=strtoint(copy(timestring,7,2));
              m:=strtoint(copy(timestring,4,2));
              h:=strtoint(copy(timestring,1,2));
            end
          else
            begin
              s:=strtoint(copy(timestring,6,2));
              m:=strtoint(copy(timestring,3,2));
              h:=strtoint(copy(timestring,1,1));
            end;
          if (h=s1)and(m=s2)and(s=s3) then
            begin
              ty:='Begin';
              break;
            end;
          if (h=e1)and(m=e2)and(s=e3) then
            begin
              ty:='End';
              break;
            end;
        end;
      if ty<>'No' then
        begin
          assignfile(f1,'Data\MusicSettings.BS');
          Reset(f1);
          while not(eof(f1)) do
            begin
              readln(f1,st1);
              readln(f1,st2);
              if (st1=info[count])and(st2=ty) then
                begin
                  readln(f1,st3);
                  musicplayer.FileName:=st3;
                  musicplayer.Open;
                  musicplayer.Play;
                end
              else
                readln(f1,st3)
            end;
        end;
    end;

  end;

procedure TMainForm.TTReturnClick(Sender: TObject);
begin
  TTGroupBOx.Hide;
  Desktop.Show;
end;

procedure TMainForm.Hide1Click(Sender: TObject);
begin
  Hide;
end;

procedure TMainForm.ResetAllSettings1Click(Sender: TObject);
const
  st:array[1..7] of string=('Sun','Mon','Tues','Wed','Thur','Fri','Sat');
var
  f1:Textfile;
  i:integer;
begin
  if(MessageDlg('Are You Sure That You Want to RESET ALL SETTINGS?',
          MtConfirmation,[MbYes,MbNo],0)=mrYes) then
            begin
              BSGroupBox.Hide;
              LSGroupBox.Hide;
              MSGroupBox.Hide;
              TTGroupBox.Hide;
              Desktop.Show;
              Assignfile(f1,'Data\BasicSettings.BS');
              Rewrite(f1);
              Closefile(f1);
              Assignfile(f1,'Data\MusicSettings.BS');
              Rewrite(f1);
              Closefile(f1);
              Assignfile(f1,'Data\Subjects.BS');
              Rewrite(f1);
              Closefile(f1);
              for i:=1 to 7 do
                begin
                  Assignfile(f1,'Data\'+st[i]+'.BS');
                  Rewrite(f1);
                  Closefile(f1);
                  Assignfile(f1,'Data\'+st[i]+'Table.BS');
                  Rewrite(f1);
                  Closefile(f1);
                end;
            end;
end;

procedure TMainForm.SubSelectChange(Sender: TObject);
begin
  MSType.ItemIndex:=0;
end;

end.
