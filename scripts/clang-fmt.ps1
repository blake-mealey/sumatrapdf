# This requires clang-format to be installed and in %PATH%
# http://llvm.org/releases/download.html
# it's part of clang installer

Remove-Item src\*.bak, src\*.tmp

$files =
"src\AppPrefs.*",
"src\AppTools.*",
"src\AppUtil.*",
"src\Canvas.*",
"src\Caption.*",
"src\ChmDoc.*",
"src\ChmModel.*",
"src\Colors.*",
"src\CrashHandler.*",
#"src\DisplayModel.*",
"src\DjVuEngine.*",
"src\Doc.*",
"src\EbookController.*",
"src\EbookControls.*",
"src\EbookDoc.*",
"src\EbookEngine.*",
#"src\EbookFormatter.*",
#"src\EngineDump.*",
"src\EngineManager.*",
"src\ExternalViewers.*",
"src\Favorites.*",
#"src\FileHistory.*",
"src\FileModifications.*",
"src\FileThumbnails.*",
"src\GlobalPrefs.*",
#"src\HtmlFormatter.*",
"src\ImagesEngine.*",
"src\Menu.*",
"src\MobiDoc.*",
#"src\MuiEbookPageDef.*",
"src\Notifications.*",
#"src\PagesLayoutDef*",
"src\ParseCommandLine*",
#"src\PdfCreator.*",
"src\PdfEngine.*",
"src\PdfSync.*",
"src\Print*",
"src\PsEngine.*",
#"src\RenderCache.*",
"src\Search.*",
"src\Selection.*",
#"src\SetiingsStructs.*",
#"src\StressTesting.*",
#"src\SumatraAbout.*",
#"src\SumatraAbout2.*",
"src\SumatraDialogs.*",
"src\SumatraPDF.cpp",
"src\SumatraPDF.h",
#"src\SumatraProperties.*",
#"src\SumatraStartup.*",
"src\TabInfo.*",
"src\TableOfContents.*",
"src\Tabs.*",
#"src\Tester.*",
"src\Tests*",
"src\TextSearch*",
"src\TextSelection.*",
"src\Theme.*",
"src\Toolbar.*",
#"src\UnitTests.*",
"src\WindowInfo.*",
"src\mui\SvgPath.*",
"src\utils\Archive.*",
"src\utils\BaseUtil.*",
"src\utils\BitReader.*",
"src\utils\ByteOrderDecoder.*",
"src\utils\ByteWriter.*",
#"src\utils\CmdLineParser.*",
#"src\utils\CryptoUtil.*",
#"src\utils\CssParser.*",
#"src\utils\DbgHelpDyn.*",
#"src\utils\DebugLog.*",
#"src\utils\Dict.*",
"src\utils\DirIter.*",
"src\utils\Dpi.*",
"src\utils\FileUtil.*",
"src\utils\FileWatcher.*",
#"src\utils\FzImgReader.*",
"src\utils\GdiPlusUtil.*",
#"src\utils\HtmlParserLookup.*",
#"src\utils\HtmlPrettyPrint.*",
#"src\utils\HtmlPullParser.*",
"src\utils\HtmlWindow.*",
"src\utils\HttpUtil.*",
#"src\utils\JsonParser.*",
"src\utils\LzmaSimpleArchive.*",
"src\utils\PalmDbReader.*",
"src\utils\Scoped.h",
"src\utils\ScopedWin.h",
"src\utils\SerializeTxt.*",
#"src\utils\SettingsUtil.*",
#"src\utils\SquareTreeParser.*",
#"src\utils\StrFormat.*",
"src\utils\StrSlice.*",
"src\utils\StrUtil*",
"src\utils\TgaReader.*",
"src\utils\ThreadUtil.*",
#"src\utils\TrivialHtmlParser.*",
"src\utils\TxtParser.*",
"src\utils\UITask.*",
"src\utils\UtAssert.*",
"src\utils\WebpReader.*",
"src\utils\WinDynCalls.*",
"src\utils\WinUtil.*",
"src\utils\ZipUtil.*",
"src\utils\tests\*.cpp",
"src\wingui\*",
"src\installer\Install.cpp",
"src\installer\Installer.cpp",
"src\installer\Installer.h",
"src\installer\Uninstall.cpp",
"src\tools\*.cpp"

foreach ($file in $files) {
  $files2 = Get-ChildItem $file
  foreach ($file2 in $files2) {
    Write-Host $file2
    clang-format.exe -i -style=file $file2
  }
}

Get-ChildItem -Recur -Filter "*.tmp" | Remove-Item
Get-ChildItem -Recur -Filter "*.bak" | Remove-Item
