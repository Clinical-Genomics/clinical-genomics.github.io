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
