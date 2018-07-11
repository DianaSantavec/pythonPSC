import PyQt5.QtWidgets as qt


def boldText_open (text, cursor_position) :
    "Strart bold writing"
    if text[len(text)-1] != "</span>" :   #znaci da postoji nesto izmedju
        text.append ("<span style=\"font-weight:600;\">")
    else :  #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]
        druga_polovina_text_a = text [cursor_position :]
        text = prva_polovina_text_a + druga_polovina_text_a


def boldText_close (text, cursor_position) :
    "Close bold writing"
    if  text [cursor_position-1] != "<span style=\"font-weight:600;\">" : #znaci da je korisnik ipak uneo nesto
        text.append ("</span>")
    else :   #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]    
        druga_polovina_text_a = text [cursor_position :]
        text = prva_polovina_text_a + druga_polovina_text_a
    for i in range (len(text [cursor_position : ] ) ) :
        if text[i] == "</span>" : #treba ukloniti taj drugi tag za zatvaranje sto je visak
            prva_polovina_text_a = text [ : i-1]
            druga_polovina_text_a = text [i+1 :]
            text = prva_polovina_text_a + druga_polovina_text_a

        if text [i] == "<span style=\"font-weight:600;\">" : #naisli smo na otvoreni tag tkd zatvoreni nekako nikada nije ni postojao
            break



def italicText_open (text, cursor_position) :
    "Strart italic writing"
    if text[len(text)-1] != "</i>" :   #znaci da postoji nesto izmedju
        text = text + "<i>"
    else :  #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]
        druga_polovina_text_a = text [cursor_position :]
        text = prva_polovina_text_a + druga_polovina_text_a
    return text


def italicText_close (text, cursor_position) :
    "Close italic writing"
    if  text [cursor_position -4 : cursor_position -1] != "<i>" : #znaci da je korisnik ipak uneo nesto
        text = text + "</i>"
    else :   #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]    
        #print ( prva_polovina_text_a)
        druga_polovina_text_a = text [cursor_position :]
        #print (prva_polovina_text_a)
        text = prva_polovina_text_a + druga_polovina_text_a
    for i in range (len(text [cursor_position : ] ) ) :
        if text[i:i+4] == "</i>" : #treba ukloniti taj drugi tag za zatvaranje sto je visak
            prva_polovina_text_a = text [ : i-1]
            druga_polovina_text_a = text [i+1 :]
            text = prva_polovina_text_a + druga_polovina_text_a

        if text [i] == "<i>" : #naisli smo na otvoreni tag tkd zatvoreni nekako nikada nije ni postojao
            break
    return text



def underlineText_open (text, cursor_position) :
    "Strart underline writing"
    if text[len(text)-1] != "</u>" :   #znaci da postoji nesto izmedju
        text.append ("<u>")
    else :  #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]
        druga_polovina_text_a = text [cursor_position :]
        text = prva_polovina_text_a + druga_polovina_text_a


def underlineText_close (text, cursor_position) :
    "Close bold writing"
    if  text [cursor_position -1] != "<u>" :  #znaci da je korisnik ipak uneo nesto
        text.append ("</u>")
    else :   #brisem i prethodno otvoreni tag
        prva_polovina_text_a = text [ : cursor_position - 1]    
        druga_polovina_text_a = text [cursor_position :]
        text = prva_polovina_text_a + druga_polovina_text_a
    for i in range (len(text [cursor_position : ] ) ) :
        if text[i] == "</u>" : #treba ukloniti taj drugi tag za zatvaranje sto je visak
            prva_polovina_text_a = text [ : i-1]
            druga_polovina_text_a = text [i+1 :]
            text = prva_polovina_text_a + druga_polovina_text_a

        if text [i] == "<u>" : #naisli smo na otvoreni tag tkd zatvoreni nekako nikada nije ni postojao
            break

text = ""
text = "Ovo je neki text"
text = italicText_open (text,15)
print (text)
text = text + 'lette'
print (text)
text = italicText_close (text,20)
print (text)
text = italicText_close (text,20)
print (text)
