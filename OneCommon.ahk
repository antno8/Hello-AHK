#IfWinActive
~^Shift:: Exit
~+Ctrl:: Exit
Ctrl::
  SetFormat, Integer, H
  Locale1=0x4090409 ; English
  Locale2=0x4190419 ;  Russian
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "Int", WinID, "Int", "0")
  InputLocaleID:=DllCall("GetKeyboardLayout", "Int", ThreadID)
  if(InputLocaleID=Locale1)
    SendMessage, 0x50,, % Locale2,, A
  else if(InputLocaleID=Locale2)
    SendMessage, 0x50,, % Locale1,, A
Exit
XButton1::Suspend

NumpadSub::SoundSet -15 NumpadAdd::SoundSet +15 
:*:aaa::f54o$RP$..??
:*:cca::afm833@gmail.com
:*:aaa::f54o$RP$..??
:*:pp::f54o$RP$
NumpadIns & NumpadDel::Reload
XButton1 & RButton::Right
XButton1 & MButton::^f
XButton1 & LButton::left
XButton1::XButton1
return

#IfWinActive ahk_exe Telegram.exe
  rbutton::right
  xbutton1::Left
  xbutton2::^f
  NumpadAdd::SoundSet +5 ; Увеличить общую громкость на 10%.
  NumpadSub::SoundSet -5 ; Уменьшить общую громкость на 10%.
  :*:vvv::Мы с подругой ищем +1. Не ЗОЖ. Колпино. ЛС
  return

;---------========== Microsoft Edge Browser ==========---------------

#IfWinactive ahk_exe msedge.exe
  rbutton::right
  :*:dt::Deep Throat
  :*:gg::Глубокая глотка
  :*:gh::Горловой
  :*:jj::Rought Anal
  NumpadAdd::SoundSet +5 ; Увеличить общую громкость на 10%.
  NumpadSub::SoundSet -5 ; Уменьшить общую громкость на 10%
  return

;---------========== Chrome Browser ==========---------------

#IfWinactive ahk_exe chrome.exe
  rbutton::right
  :*:dt::Deep Throat
  :*:gg::Глубокая глотка
  :*:gh::Горловой
  :*:jj::Rought Anal
  NumpadAdd::SoundSet +5 ; Увеличить общую громкость на 10%.
  NumpadSub::SoundSet -5 ; Уменьшить общую громкость на 10%
  return

;---------========== Casino X ==========---------------

#IfWinactive ahk_exe CasinoX.exe
  :*:cca::afm833@gmail.com
  :*:aaa::f54o$RP$..??
  NumpadAdd::SoundSet +5 ; Увеличить общую громкость на 10%.
  NumpadSub::SoundSet -5 ; Уменьшить общую громкость на 10%
  return

;---------========== Yandex Browser ==========---------------

#IfWinActive ahk_class YandexBrowser_WidgetWin_1
  rbutton::right
  f9::Send f54o$RP$..??
  :*:dt::Deep Throat
  :*:gg::Глубокая глотка
  :*:gh::Горловой
  :*:jj::Rought Anal
  :*:cca::afm833@gmail.com
  :*:aaa::f54o$RP$..??
  NumpadAdd::SoundSet +5 ; Увеличить общую громкость на 10%.
  NumpadSub::SoundSet -5 ; Уменьшить общую громкость на 10%
  return

;---------========== Tor Browser ==========---------------

#IfWinActive ahk_class MozillaWindowClass
  :*:oca::Antno59
  :*:opa::rYsK193xgI
  :*:ocb::Antno59Antno59
  :*:opb::f54o$RP$f54o$RP$
  :*:omgl::http://omgomgomg5j4yrr4mjdv3h5c5xfvxtqqs2in7smi65mjps7wvkmqmtqd.onion
    :*:blsp:http://btrhbfeojofxcpxuwnsp5h7h22htohw4btqegnxatocbkgdlfiawhyid.onion/
  return

  /*&
  f11::send f54o$RP$..ga
  f5::send f54o$RP$..
  f6::send antno883@gmail.com
  f9::Send Vankmmm1..\

  Left::SoundSet, -5
  Right::SoundSet, +5

  9::^v

  f10::send wget -O /root/install_outline_server.sh https://download.iphoster.net/install_outline_server.sh;
  f11::send  chmod 755 /root/install_outline_server.sh;
  f12::send  bash /root/install_outline_server.sh;
  f6::send f54o$RP$.ca

  */

