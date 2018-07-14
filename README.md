# Modulformen 1

Dies ist ein nicht offizielles Skript der Vorlesung Modulformen 1 aus dem Sommersemester 2018 gehalten von Professor Winfired Kohnen an der Universität Heidelberg.
Das Skript wurde von Patrick und mir in der Vorlesung mitgeschrieben.
Deshalb kann es Fehler enthalten und ich übernehme keine Garantie für Richtigkeit.

## Fehler _(Neu)_
Es gibt jetzt eine Liste kürzlich korrgiert Fehler unter [hier](https://github.com/jenuk/modulformen/blob/master/korrekturen.md).

Wenn du Fehler findest, schreib mit bitte (Email steht am Anfang des Skriptes) oder eröffne ein neues Issue.

## Kompilieren

Das Skript ist für pdflatex geschrieben.
Es kann einfach mit dem Makefile kompiliert werden.

### Einzelne Teile des Skriptes

Mithilfe von `lecture.tex` können einzelne Vorlesungen (aus `vorlesungen/lectures/`) kompiliert werden.
Dafür muss man den entsprechenden Dateinamen an der makierten Stelle angeben.
Optional kann man am Anfang das aktuelle Kapitel, Section, Subsection und Satznummer gesetzt werden, für korrekte Nummerierung.

### Makefile

Einfaches erstellen des Skriptes funktioniert via `make`, dies löscht auch temporäre Dateien.
Das Skript kann auch nur kompliert werden (via `make script`), dabei wird das Skript mehrmals kompiliert, damit Referenzen richtig verlinkt werden, und die Indizes werden erstellt.
Temporäre Dateien können wieder gelöscht werden (via `make clean`).
Das Skript kann auch ohne Ausgabe von LaTeX kompiliert werden (via `make silent` für ein mehrmaliges kompilieren und `make once` für einmaliges kompilieren).

## Inhalt der Dateien

Das Skript besteht aus verschiedenen Teilen.
- `script.tex` bindet alle Teile ein
- `mypackage.sty` enthält alle makros, die zum kompilieren notwendig sind
- `layout.tex` konfiguriert Kopf- und Fußzeile sowie das Deckblatt
- `lecture.tex` dient zur Kompilierung einzelner Dateien (siehe oben)
- `vorlesungen/` enthält allen Inhalt der Vorlesung
    - `vorlesungen/chapterX/` enthält den Inhalt von Kapitel X
    - `vorlesungen/lectures/` enthält die Vorlesungen nach Datum sortiert (im Format YY-MM-DD)
- `images` enthält alle Bilder nach Kapitel sortiert
