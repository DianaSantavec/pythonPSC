let str="ovo je neki string"
let blanko: Character = " "
var brojac=0
for c in str{
	if c==blanko {
	//if c == " "{  moze ali bitno je da ako blanko = " "  i c==blanko nece raditi
		brojac+=1
	}
}
print (brojac)
