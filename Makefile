flags = -f gfm -V colorlinks=true --pdf-engine=xelatex

all: docx-pt-br docx-en-us pdf-pt-br pdf-en-us

docx-pt-br:
	@pandoc $(flags) cv-ptBR.md -o siloe_garcez_engenheiro_software.docx

docx-en-us:
	@pandoc $(flags) cv-enUS.md -o siloe_garcez_software_engineer.docx

pdf-pt-br:
	@pandoc $(flags) cv-ptBR.md -o siloe_garcez_engenheiro_software.pdf

pdf-en-us:
	@pandoc $(flags) cv-enUS.md -o siloe_garcez_software_engineer.pdf
