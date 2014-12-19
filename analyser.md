---
layout: base
---

# Analyser
För varje projekt identifierar vi tillsammans de methoder (laborativa och bioinformatiska) som behövs och därefter sätter vi upp analysen. Varje analys definieras med hjälp av en unik analyskod som entydigt definierar hur analysen skall utföras. Det är viktigt att rätt kod används i beställningsformuläret.

Följande analyser finns uppsatta och är beställningsbara. Kontakta oss ifall någon annan typ av analys behövs.

|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
| Analyskod | Beskrivning                 | Bibliotekspreparering                | Sekvenseringsdjup              | Övrigt       |
|-----------|-----------------------------|--------------------------------------|--------------------------------|--------------|
| EXOSXTR100| Klinisk helexomsekvensering | SureSelect XT (Agilent Technologies) | 100 M läspar (75 M garanterat) | >3000 ng DNA |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
| EXOSXTR075|                             |                                      | 75 M läspar (56 M garanterat)  |              |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
| EXOSXTR060|                             |                                      | 60 M läspar (45 M garanterat)  |              |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
| EXOQXTR100| Klinisk helexomsekvensering | SureSelect QXT (Agilent Technologies)| 100 M läspar (75 M garanterat) | >50 ng DNA   |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
|           |                             |                                      | 75 M läspar (56 M garanterat)  |              |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
|           |                             |                                      | 60 M läspar (45 M garanterat)  |              |
|-----------+-----------------------------+--------------------------------------+--------------------------------|--------------|
| WGSPCRFR600| Klinisk helgenomsekvensering utan amplifiering | Illumina TruSeq PCR free | 600 M läspar (450 M garanterat) |     |
|------------+------------------------------------------------+--------------------------+---------------------------------|-----|
| WGSACUR600 | Akut klinisk helgenomsekvensering              | Illumina TruSeq PCR free | 600 M läspar                    | Analys inom 48 timmar, första resultat redan inom 24 timmar |
|------------+------------------------------------------------+--------------------------+---------------------------------|-----|

## Begränsning av analyserna

### Exomsekvensering
Anrikning av exomet sker med hjälp av hybridiseringsbaserade tekniker, vilka inte möjliggör en fullständing täckning av det kodande exomet. Vissa regioner kommer inte finnas representerade i slutdatat och eventuella mutationer i dessa regioner kommer därmed inte kunna identifieras. Metoden för anrikning använder PCR-baserad amplifieringstekniker, vilket skapar en ojämn representation av exomet. Vissa regioner kommer att vara bättre täckta en andra. Vid behov kan vi tillhandahålla en provspecifik uppskattning av anrikningseffektiviteten för antingen hela exomet eller den kliniskt relevanta genlistan.

### Helgenomsekvensering
I helgenomsekvensering kommer vissa regioner att inte detekteras tillförlitligt. Detta inkluderar bland annat repetitiva regioner i genomet. De PCR-fria metoderna har en mer komplett och jämnare täckning än metoder som använder sig av PCR amplifiering. Vid behov kan vi tillhandahålla en provspecifik uppskattning av täckningsgraden för antingen hela genomet eller den kliniskt relevanta genlistan.


## Teknisk beskrivning av analyserna

### Exomsekvensering
Genomiskt DNA fragmenteras ner till ca 300 bp, SureSelect teknologi (Agilent Technologies) används för biblioteksförberedning. Anrikning av exomet sker med CRE prober (Agilent Technologies) och indexering av prover sker innan anrikning. Färdiga bibliotek kvantifieras med qPCR (Kapa) och sekvenseras PE 2x100 bp i rapid run mode på en HiSeq 2500 (Illumina).

### Helgenomsekvensering
Genomiskt DNA fragmenteras ner till ca 350 bp, TruSeq DNA PCR-free teknologi (Illumina) används för biblioteksförberedning. Färdiga bibliotek kvantifieras med qPCR (Kapa) och sekvenseras PE 2x100 bp i rapid run mode på en HiSeq 2500 (Illumina).
