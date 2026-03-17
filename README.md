# plasmonics_review

A review article on **Recent Advances in Plasmonics and Nanophotonic
Realizations**, written in the style of Springer's *Plasmonics* journal.

## Repository layout

```
plasmonics_review/
├── article/
│   ├── plasmonics_review.tex   # Main LaTeX source (8 sections, 44 references)
│   └── references.bib          # Validated bibliography (44 authoritative entries)
├── output/
│   └── plasmonics_review.pdf   # Compiled PDF (8 pages, A4 two-column)
├── Makefile                    # Reproducible build
└── .gitignore
```

## Building

Requires TeX Live with `pdflatex` and `bibtex` (packages:
`texlive-latex-base`, `texlive-latex-recommended`,
`texlive-latex-extra`, `texlive-fonts-recommended`, `texlive-science`).

```bash
make          # produces output/plasmonics_review.pdf
make clean    # remove build artefacts
```

## Article structure

| § | Topic |
|---|-------|
| 1 | Active plasmonics and ENZ physics |
| 2 | Alternative materials: TiN, AZO, MXenes |
| 3 | Quantum plasmonics and single-photon sources |
| 4 | Solar photocatalysis and interfacial desalination |
| 5 | Wearable SERS sensors and point-of-care diagnostics |
| 6 | Thermal management and loss compensation |
| 7 | Active metasurfaces: VO₂, PCMs, hybrid Mie-plasmonic |
| 8 | Scalable nanofabrication and AI-enhanced design |

## Reference validation

All 44 bibliography entries have been verified against the published
literature.  Every entry includes a DOI pointing to the authoritative
source.  Fabricated or outdated references from earlier drafts were
replaced with peer-reviewed papers from high-impact journals (Science,
Nature, Nature Nanotechnology, Physical Review Letters, etc.).
