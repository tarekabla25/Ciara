class MainController < ApplicationController
  
  def index
    
    puts "Hallo #{rand(1000)}"

    # 1) Prüfe Rechte - darf ich diesen Request durchführen?
    # 2) Prüfe Vollständigkeit - kann ich mit diesem request arbeiten?
    #    - sind genügend Information da? Z.B. Parameter
    # 3) Durchführung
    #    - z.B. Laden von Daten
    #    - oder Speichern
    # 4) Rückmeldung
    #    - Dialog
    #      -> Fehler: Es fehlt noch eine Eingabe
    #      -> Bestätigung: Speichern erfolgreich!
    #    - "Weiterleitung" zu anderer Seite
    #    - Dateidownload
    #    } : "rendern" ~=  "Ausliefern"
    #       ->  html
    #       ->  js
    #       ->  text (ASCII)
    #       ->  stream (File)
    #       ->  image (jpg)
    # 
    
    # render template: 'main/index'

  end









end