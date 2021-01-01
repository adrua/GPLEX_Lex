REM generate resource resX file and copy to destination
csc GenerateResource.cs
GenerateResource.exe
move Content.resx ..\IncludeResources
del GenerateResource.exe

REM generate a fresh copy of parser.cs
C:\repos\Arkeos\Converters\ArkeosDelphiAnalizer\packages\YaccLexTools.0.2.2\tools\gppg.exe /gplex /nolines gplex.y
move parser.cs ..\GPLEX

REM generate a fresh copy of Scanner.cs
C:\repos\Arkeos\Converters\ArkeosDelphiAnalizer\packages\YaccLexTools.0.2.2\tools\gplex.exe gplex.lex
move Scanner.cs ..\GPLEX

if not exist GplexBuffers.cs goto finish
move GplexBuffers.cs ..\GPLEX

:finish
REM Ended

