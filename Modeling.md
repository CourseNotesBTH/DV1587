# Anteckningar Databas

## Modellering

Det finns några olika "lager" man använder sig av vid modellering.

1. Den _konceptuella_ nivån är själva verkligheten - ett bibliotek, en taxitjänst etc.
2. Den _logiska_ nivån är en uppsättning regler.
3. Den _fysiska_ nivån är implementationen i SQL.

En entitet är substantiv inom området.

### Konceptuell nivå

Låt oss tänka oss en **styguthyrning**. Vi ser över tjänsten på en konceptuell nivå.

| Stuga  |
| :----: |
|  Yta   |
|  Pris  |
| Adress |
|   El   |
| Vatten |

Ett sådant substantiv vore _stuga_. En stuga har bland annat egenskaperna _yta_, _hyra_, _adress_, åtkomst till el, åtkomst till vatten. Entiteten stuga går alltså att förse med ett antal attribut. På så vis får vi bekräftat att vi jobbar med en entitet - den har attribut.

Låt oss tänka oss en __båt__.

|   Båt   |
| :-----: |
| Bärvikt |
|  Längd  |
|   Typ   |

En stuga bör rimligtvis inte hyras ut flera gånger till olika personer vid samma tillfälle. Vi bör på så viss hantera bokningar, vilket ger oss entiteten __bokning__. En __bokning__ tillhör rimligtvis en __kund__.

|     Kund      |
| :-----------: |
|     Namn      |
|     Ålder     |
| Telefonnummer |

| Bokning |
| :-----: |
|  Stuga  |
|  Kund   |
| Period  |
|   Båt   |

De sammankopplingar som sker ger oss ett väldigt övergripande databassystem.

### Logisk nivå

Vi ser nu över kardinaliteten på våra entiteter.

En stuga kan ha en bokning. En bokning kan ha 0 till många stugor.

En båt kan ha många bokningar. En bokning kan ha flera båtar (0-m). Problem m-m!
Vi skapar entiteten BokningsRad.

En kund kan flera bokningar. En bokning kan ha en kund.

Den ideala kardinaliteten är _1-m_ (en till många). Vi kan inte hantera förhållande _m-m_ (många till många).

Låt oss ha Entitet A och Entitet B. A kan ha 0-m B, B kan ha 0-m A. Vi tar bort den relationen och gör en sammankoppling EntitetAEntitetB. EntitetAEntitetB kan innehålla 0-m A och 0-m B.