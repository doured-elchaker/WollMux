# This file contains all language specific settings and strings used by the WollMux installer.
# It is included with !include by wollmuxinstaller.nsi.


# Load Language Files
LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf" ;; default language
LoadLanguageFile "${NSISDIR}\Contrib\Language files\German.nlf"

# Section Names
LangString StartMenuShortcut ${LANG_ENGLISH} "Start menu shortcut"
LangString StartMenuShortcut ${LANG_GERMAN} "Startmen�-Eintrag"
LangString DesktopShortcut ${LANG_ENGLISH} "Desktop shortcut"
LangString DesktopShortcut ${LANG_GERMAN} "Desktop-Verkn�pfung"

# Start menu link names
LangString UninstallWollMux ${LANG_ENGLISH} "Uninstall ${WOLLMUX}"
LangString UninstallWollMux ${LANG_GERMAN} "${WOLLMUX} entfernen"

# General Messages
LangString NeedAdminMessage ${LANG_ENGLISH} "You need administrator privileges to execute this program!"
LangString NeedAdminMessage ${LANG_GERMAN} "Sie ben�tigen Administrator-Rechte um dieses Programm auszuf�hren!"
LangString TryToKillOOoMessage ${LANG_ENGLISH} "OpenOffice.org/LibreOffice must be closed before execution of this installer.$\n\
												The installer will now try to close any open OOo/LO windows.$\n\
												This can take a few seconds."
LangString TryToKillOOoMessage ${LANG_GERMAN} "OpenOffice.org/LibreOffice muss vor dem Ausf�hren dieses Installers beendet werden.$\n\
											   Der Installer versucht nun offene OOo/LO-Fenster zu schlie�en.$\n\
											   Dieser Vorgang kann einige Sekunden dauern."
LangString OOoRunningMessage ${LANG_ENGLISH} "OpenOffice.org/LibreOffice or the OOo/LO quickstarter could not be closed!$\n\
											  Please close all OpenOffice.org/LibreOffice windows and the quickstarter, then try again.$\n\
											  Another reason for this error could be that OpenOffice.org/LibreOffice is not installed on your system."
LangString OOoRunningMessage ${LANG_GERMAN} "OpenOffice.org/LibreOffice bzw. der OOo/LO-Schnellstarter konnten nicht beendet werden!$\n\
                                             Bitte schlie�en Sie alle offenen OpenOffice.org/LibreOffice-Fenster sowie den Schnellstarter und versuchen Sie es erneut.$\n\
											 Ein anderer Grund f�r diesen Fehler k�nnte sein, dass OpenOffice.org/LibreOffice nicht auf Ihrem System installiert ist."
LangString NoJavaFoundMessage ${LANG_ENGLISH} "Program cannot be executed because no Java was found! Please install the Java Runtime Environment.$\n\
											   If the JRE is already installed make sure the JAVA_HOME environment variable contains the path to your JRE directory.$\n\"
LangString NoJavaFoundMessage ${LANG_GERMAN} "Programm kann nicht ausgef�hrt werden, das kein Java gefunden wurde! Bitte installieren Sie Java auf Ihrem System.$\n\
											  Wenn eine Java-Laufzeitumgebung (JRE) bereits installiert ist, stellen Sie sicher, dass die JAVA_HOME Umgebungsvariable den Pfad zu ihrem JRE-Ordner enth�lt."
LangString AbortMessage ${LANG_ENGLISH} "Execution aborted!"
LangString AbortMessage ${LANG_GERMAN} "Ausf�hrung abgebrochen!"

# Installer Messages
LangString NoOOoFoundMessage ${LANG_ENGLISH} "Could not install ${WOLLMUX}.oxt because no OpenOffice.org/LibreOffice installation was found!$\n\
											  Please install ${WOLLMUX}.oxt manually using the OpenOffice.org/LibreOffice extension manager."
LangString NoOOoFoundMessage ${LANG_GERMAN} "Konnte ${WOLLMUX}.oxt nicht installieren, da keine OpenOffice.org/LibreOffice-Installation gefunden wurde!$\n\
											 Bitte installieren Sie die ${WOLLMUX}.oxt manuell mit dem Extension Manager von OpenOffice.org/LibreOffice."
LangString UnoPkgRemoveMessage ${LANG_ENGLISH} "Removing previously installed ${WOLLMUX} extensions..."
LangString UnoPkgRemoveMessage ${LANG_GERMAN} "Entferne bereits installierte ${WOLLMUX}-Extensions..."
LangString UnoPkgAddMessage ${LANG_ENGLISH} "Installing ${WOLLMUX} extension into OpenOffice.org/LibreOffice..."
LangString UnoPkgAddMessage ${LANG_GERMAN} "F�ge ${WOLLMUX}-Extension zu OpenOffice.org/LibreOffice hinzu..."
LangString UnoPkgErrorMessage ${LANG_ENGLISH} "Error while installing ${WOLLMUX}.oxt extension into OpenOffice.org/LibreOffice!$\n\
	                                           Please make sure no process with the name 'soffice.bin' is running and that you have the necessary rights, then try again."
LangString UnoPkgErrorMessage ${LANG_GERMAN} "Fehler beim Installieren der ${WOLLMUX}.oxt-Extension in OpenOffice.org/LibreOffice!$\n\
	                                          Bitte stellen Sie sicher, dass kein Prozess mit dem Namen 'soffice.bin' l�uft und dass sie die notwendigen Benutzerrechte haben."
LangString AbortUnoPkgErrorMessage ${LANG_ENGLISH} "Installation was aborted because ${WOLLMUX}.oxt extension couldn't be installed!$\n\
	                                                No files were created during installation but an already existing ${WOLLMUX} extension may have been uninstalled."
LangString AbortUnoPkgErrorMessage ${LANG_GERMAN} "Installation wurde abgebrochen, da die ${WOLLMUX}.oxt-Extension nicht installiert werden konnte!$\n\
	                                               Keine Dateien wurden w�hrend der Installation erzeugt, aber eventuell wurde eine bereits vorhandene ${WOLLMUX}-Extension deinstalliert."
LangString AbortFileCopy ${LANG_ENGLISH} "Installation was aborted because files could not be copied to $INSTDIR!"
LangString AbortFileCopy ${LANG_GERMAN} "Installation wurde abgebrochen, da keine Dateien in $INSTDIR geschrieben werden konnten!"
LangString StartMenuShortcutErrorMessage ${LANG_ENGLISH} "Could not create start menu shortcut! You may have to create one manually.$\n\
                                                          Installer is proceeding with installation despite the error."
LangString StartMenuShortcutErrorMessage ${LANG_GERMAN} "Konnte keinen Startmen�-Eintrag anlegen! Sie m�ssen eventuell manuell einen Eintrag anlegen.$\n\
                                                         Die Installation wird trotz des Fehlers fortgesetzt."
LangString DesktopShortcutErrorMessage ${LANG_ENGLISH} "Could not create desktop shortcut! You may have to create one manually.$\n\
                                                        Installer is proceeding with installation despite the error."
LangString DesktopShortcutErrorMessage ${LANG_GERMAN} "Konnte keine Desktop-Verkn�pfung anlegen! Sie m�ssen eventuell manuell ein Verkn�pfung anlegen.$\n\
                                                       Die Installation wird trotz des Fehlers fortgesetzt."



# Uninstaller Messages
LangString OOoKillFailedMessage ${LANG_ENGLISH} "OpenOffice.org/LibreOffice could not be closed. This could have several reasons:$\n\
                                                 - No Java found$\n\
										         - No OpenOffice.org/LibreOffice found (maybe it isn't installed)$\n\
										         - Something is keeping an OpenOffice.org/LibreOffice process alive$\n\
										         If you are sure that no OpenOffice.org/LibreOffice process is running you can safely continue the uninstallation.$\n\
										         Do you want to continue?"
LangString OOoKillFailedMessage ${LANG_GERMAN} "OpenOffice.org/LibreOffice konnte nicht beendet werden. Dies kann verschiedene Gr�nde haben:$\n\
											   - Kein Java gefunden$\n\
											   - Kein OpenOffice.org/LibreOffice gefunden (evtl. ist es nicht installiert)$\n\
											   - Irgendein Programm h�lt einen OpenOffice.org/LibreOffice-Prozess am Leben$\n\
											   Wenn Sie sicher sind, dass kein OpenOffice.org/LibreOffice-Prozess mehr l�uft, k�nnen Sie die Deinstallation einfach fortsetzen.$\n\
											   M�chten Sie fortsetzen?"
LangString unNoOOoFoundMessage ${LANG_ENGLISH} "Could not uninstall ${WOLLMUX}.oxt because no OpenOffice.org/LibreOffice installation was found!$\n\
											    Please uninstall ${WOLLMUX}.oxt manually using the OpenOffice.org/LibreOffice extension manager."
LangString unNoOOoFoundMessage ${LANG_GERMAN} "Konnte ${WOLLMUX}.oxt nicht deinstallieren, da keine OpenOffice.org/LibreOffice-Installation gefunden wurde!$\n\
											   Bitte deinstallieren Sie die ${WOLLMUX}.oxt manuell mit dem Extension Manager von OpenOffice.org/LibreOffice."
LangString InstDirNotDeletedMessage ${LANG_ENGLISH} "The directory $INSTDIR was not deleted since it still contains files or deletion was prevented by the operating system!"
LangString InstDirNotDeletedMessage ${LANG_GERMAN} "Der Ordner $INSTDIR wurde nicht gel�scht, da er noch Dateien enth�lt oder das L�schen vom Betriebssystem verhindert wurde!"
