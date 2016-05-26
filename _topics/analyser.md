---
layout: base
permalink: /analyser/
title: Analyser
analysis_groups:
  - accredited
  - not_accredited
---

# Analyser
För varje projekt identifierar vi tillsammans de methoder (laborativa och bioinformatiska) som behövs och därefter sätter vi upp analysen. Varje analys definieras med hjälp av en unik analyskod som entydigt definierar hur analysen skall utföras. Det är viktigt att rätt kod används i beställningsformuläret.

Följande analyser finns uppsatta och är beställningsbara. Antalet reads kan justeras enligt önskemål och nedan följer exempel på analyser med 100 M läspar för exomprover och 60X/30X för WGS prover. Kontakta oss ifall någon annan typ av analys behövs.

<div class="container">
{% for analysis_group in page.analysis_groups %}
	<h2>
	{% if analysis_group == 'accredited' %}
		Ackrediterade analyser
	{% else %}
		Icke ackrediterade analyser
	{% endif %}
	</h2>

	<table>
		<thead>
			<tr>
				<th>Analyskod</th>
				<th>Beskrivning</th>
				<th>Bibliotekspreparering</th>
				<th>Sekvenseringsdjup</th>
				<th>Övrigt</th>
			</tr>
		</thead>
		
		<tbody>
			{% for analysis in site.data.analyses %}
				{% if analysis_group == 'accredited' and analysis.accredited == true %}
					<tr>
						<td>
							<a href="/analyser/{{ analysis.code | downcase }}">
								{{ analysis.code }}
							</a>
						</td>
						<td>{{ analysis.description }}</td>
						<td>{{ analysis.library_prep }}</td>
						<td>{{ analysis.sequencing_depth }}</td>
						<td>{{ analysis.misc }}</td>
					</tr>
				{% elsif analysis_group == 'not_accredited' and analysis.accredited == false %}
					<tr>
						<td>
							<a href="/analyser/{{ analysis.code | downcase }}">
								{{ analysis.code }}
							</a>
						</td>
						<td>{{ analysis.description }}</td>
						<td>{{ analysis.library_prep }}</td>
						<td>{{ analysis.sequencing_depth }}</td>
						<td>{{ analysis.misc }}</td>
					</tr>
				{% endif %}
			{% endfor %}
		</tbody>
	</table>
{% endfor %}
</div>

## Begränsning av analyserna

### Klinisk Exomsekvensering
Anrikning av exomet sker med hjälp av hybridiseringsbaserade tekniker, vilka inte möjliggör en fullständing täckning av det kodande exomet. Vissa regioner kommer inte finnas representerade i slutdatat och eventuella mutationer i dessa regioner kommer därmed inte kunna identifieras. Metoden för anrikning använder PCR-baserad amplifieringstekniker, vilket skapar en ojämn representation av exomet. Vissa regioner kommer att vara bättre täckta en andra. Vid behov kan vi tillhandahålla en provspecifik uppskattning av anrikningseffektiviteten för antingen hela exomet eller den kliniskt relevanta genlistan.

### Klinisk Helgenomsekvensering
I helgenomsekvensering kommer vissa regioner att inte detekteras tillförlitligt. Detta inkluderar bland annat repetitiva regioner i genomet. De PCR-fria metoderna har en mer komplett och jämnare täckning än metoder som använder sig av PCR amplifiering. Vid behov kan vi tillhandahålla en provspecifik uppskattning av täckningsgraden för antingen hela genomet eller den kliniskt relevanta genlistan. Helgenomsekvensering kan göras vid multipler av 30x. Kontakta oss för mer information


## Teknisk beskrivning av analyserna

### Klinisk Exomsekvensering
Genomiskt DNA fragmenteras ner till ca 300 bp, SureSelect teknologi (Agilent Technologies) används för biblioteksförberedning. Anrikning av exomet sker med CRE prober (Agilent Technologies) och indexering av prover sker efter anrikning. Färdiga bibliotek kvantifieras med qPCR (Kapa) eller med Qubit och sekvenseras PE 2x100 bp i rapid run mode på en HiSeq 2500 (Illumina).

### Klinisk Helgenomsekvensering
Genomiskt DNA fragmenteras ner till ca 350 bp, TruSeq DNA PCR-free teknologi (Illumina) används för biblioteksförberedning. Färdiga bibliotek kvantifieras med qPCR (Kapa) och sekvenseras PE 2x125 bp på en HiSeqX (Illumina).
