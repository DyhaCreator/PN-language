uses Crt;

var
  code_arr:array[0..255] of string;
  token:array[0..255] of char;
  code:string;
  i:integer;
  prg:text;
  text:text;
  
procedure lex_analysis();begin
  ClrScr;
  var i,j:integer;
  var index:integer;
  var a:string;
  for i:=0 to 255 do begin
    if token[i] = '.' then break
    else if token[i] = 'P' then begin
      reset(text);
      for j:=0 to index do begin
        readln(text,a);
      end;
      writeln(a);
      close(text);
    end
    else if token[i]='N' then index:=index+1;
  end;
end;
  
procedure lexer();begin
  var i:integer;
  for i:=1 to code.Length do begin
    token[i-1]:=code[i];
  end;
  writeln(token);
  lex_analysis();
end;

begin
  for i:=0 to 255 do begin
    token[i]:='.';
  end;
  Assign(prg,'code.PN');
  Assign(text,'text.txt');
  reset(prg);
  while not eof(prg) do begin
    readln(prg,code_arr[i]);
    code:=code+code_arr[i];
  end;
  close(prg);
  writeln(code);
  lexer();
  readln();
end.