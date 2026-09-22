# LIBRO-BC-TESIS

Tesis: *Verificación de consenso e inclusión de transacciones en Ethereum con
conocimiento cero aplicado a la transferencia de activos digitales*.
Facultad Politécnica, Universidad Nacional de Asunción.

## Requisitos

- Una distribución de TeX Live 2026 (o equivalente) con `pdflatex`, `biber` y `latexmk`.
- Paquetes: `babel` (español), `biblatex`, `csquotes`, `imakeidx`, `hyperref`, `cleveref`,
  `algorithmicx`, `siunitx`, entre otros ya listados en `preambulo.tex`.

## Estructura del repositorio

```text
.
├── main.tex              # Orquestador del documento (no editar contenido acá)
├── preambulo.tex         # Paquetes y configuración general
├── metadata.tex          # Título, autores, asesor, institución
│
├── capitulos/
│   ├── 01-introduccion.tex
│   ├── 02-blockchain/        # Cap. 2: arquitectura, Ethereum, Aztec, puentes
│   ├── 03-conocimiento-cero/ # Cap. 3: fundamentos ZK, Circom, Noir, SP1, otros
│   ├── 04-zkbridge/          # Cap. 4: diseño e implementación del puente
│   └── 05-conclusion.tex
│
├── preliminares/          # Carátula, dedicatoria, agradecimientos, resúmenes, símbolos
├── anexos/                 # Apéndice y ficha catalográfica
├── figuras/                 # Logos institucionales y demás imágenes
├── bibliografia/
│   └── referencias.bib
│
├── latexmkrc
└── Makefile
```

## Cómo compilar

```bash
make
```

Genera `build/main.pdf`, corriendo `pdflatex`/`biber`/`makeindex` tantas veces como
`latexmk` considere necesario para resolver referencias cruzadas, citas e índice.

## Modo de observación (recompila al guardar)

```bash
make watch
```

## Limpiar archivos generados

```bash
make clean
```

## Motor LaTeX

`pdflatex` (vía `latexmk`), con `biber` para la bibliografía (`biblatex`, estilo `numeric`).

## Convenciones

- **Capítulos**: cada carpeta en `capitulos/` corresponde a un capítulo del libro; el
  `\chapter{...}` de cada uno vive en `main.tex`, y cada archivo dentro de la carpeta es
  una `\section{...}` de ese capítulo. Los archivos sueltos (`01-introduccion.tex`,
  `05-conclusion.tex`) son capítulos de una sola sección.
- **Figuras**: usar `\includegraphics{nombre-del-archivo}` sin extensión ni ruta —
  `\graphicspath{{figuras/}}` ya está configurado en `preambulo.tex`. Nombrar los
  archivos en minúsculas y con guiones.
- **Referencias cruzadas**: usar `\label`/`\ref` o `\cref` (paquete `cleveref`), nunca
  números de capítulo/figura/tabla escritos a mano.
- **Bibliografía**: agregar entradas en `bibliografia/referencias.bib` y citarlas con
  `\cite{clave}`. Solo las entradas efectivamente citadas aparecen en "Referencias".

## Advertencias sobre contenido pendiente

- Varias secciones de `capitulos/` todavía son placeholders (`\section{...}` sin
  contenido): `02-blockchain/02-ethereum.tex`, `03-aztec.tex`, `04-puentes.tex`, todo
  `03-conocimiento-cero/`, todo `04-zkbridge/`, y `05-conclusion.tex`.
- `preliminares/portada.tex` y `preliminares/aprobacion.tex` existen pero no están
  incluidos actualmente en `main.tex`.
- `anexos/catalografica.tex` existe pero está comentado en `main.tex`.
- El título/autor/asesor en `metadata.tex` y la institución fueron completados a partir
  del contenido de `preliminares/resumen-es.tex` y de los logos en `figuras/`; conviene
  confirmarlos.

## Colaboración

- Hacer commits pequeños y descriptivos por capítulo o sección.
- No versionar archivos generados (`build/`, `.aux`, `.log`, etc. — ya cubiertos por
  `.gitignore`).
- Compilar localmente con `make` antes de subir cambios que afecten `main.tex` o
  `preambulo.tex`, para confirmar que el documento sigue generando `build/main.pdf`
  sin errores.
