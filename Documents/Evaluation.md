# Upscalers Evaluation

## Upscalers as Enhancer

- Upscale Four Times with Model
- Downscale 0.25 Times with Lanczos

FAST MODELS      | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
Pixelmator       | +         | +++     | +++    |         |        |       | +++             | +++
LSDIR-Compact-C3 | +         | ++      | ++     | +       |        |       | +++             | ++
LSDIR-Compact-N3 | +         | +++     | +++    |         |        |       | +++             | +++
RealESR-Anime    | ++        | +       | ++     | +++     | ++     |       | ++              | ++
RealESRGAN-V3    | ++        | ++      | +      | ++      | +      |       | ++              | +
RealESRGAN-WDN   | +++       | +       | +      | +++     | ++     |       | +               | +

NORMAL MODELS    | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
ESRGAN           | +         | +++     | +++    |         |        |       | +++             | ++
LSDIR-Plus-C     | ++        | ++      | +      | +       |        |       | +++             | +
LSDIR-Plus-N     | ++        | ++      | +      |         |        |       | +++             | +++
LSDIR            | +         | ++      | ++     | +       |        |       | +++             | +
NMKD-Siax        | ++        | +++     | +++    |         | +      |       | +++             | +
RealESRNET       | +++       | +++     | +++    | ++      | +++    |       | ++              | +++
Remacri          | ++        | +++     | +++    | +       | +      |       | +++             | +
UltraSharp       | ++        | +++     | +++    | +       | +      |       | ++              | ++

## Upscalers at Two Times

- Downscale 0.5 Times with Lanczos
- Upscale Four Times with Model
- Downscale 0.5 Times with Lanczos

FAST MODELS      | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
Pixelmator       | +         | +++     | +++    |         |        |       | +++             | +++
LSDIR-Compact-C3 | ++        | ++      | ++     | +       |        |       | +++             | ++
LSDIR-Compact-N3 | ++        | +++     | +++    |         |        |       | +++             | +++
RealESR-Anime    | +         | +       | ++     | +++     | +      |       | ++              | ++
RealESRGAN-V3    | +++       | ++      | +      | ++      | ++     |       | +               | +
RealESRGAN-WDN   | +++       | +       | +      | +++     | +++    |       | +               | +

NORMAL MODELS    | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
ESRGAN           | +         | +++     | +++    |         |        |       | +++             | ++
LSDIR-Plus-C     | ++        | ++      | +      | +       |        |       | +++             | +
LSDIR-Plus-N     | ++        | +++     | ++     |         |        |       | +++             | +++
LSDIR            | +         | ++      | ++     | +       |        |       | +++             | +
NMKD-Siax        | ++        | +++     | +++    |         | +      |       | +++             | +
RealESRNET       | ++        | ++      | +++    | ++      | ++     |       | ++              | +++
Remacri          | +++       | ++      | +++    | ++      | +      |       | +++             | +
UltraSharp       | +++       | +++     | +++    | ++      | +++    | ++    | +               | ++

## Upscalers at Four Times

- Downscale 0.25 Times with Lanczos
- Upscale Four Times with Model

FAST MODELS      | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
Pixelmator       |           | +       | +++    | +       |        |       | +++             | +++
LSDIR-Compact-C3 | ++        | ++      | ++     | ++      | +      |       | ++              | ++
LSDIR-Compact-N3 | ++        | ++      | +++    | +       | +      |       | +++             | +++
RealESR-Anime    |           |         | +      | +++     |        |       | ++              | ++
RealESRGAN-V3    | ++        | +       | ++     | ++      | ++     | +     | +               | +
RealESRGAN-WDN   | +         |         | +      | +++     | ++     | +     | +               | +

NORMAL MODELS    | SHARPNESS | TEXTURE | DETAIL | DENOISE | DEBLUR | EXTRA | DETAIL FIDELITY | COLOR FIDELITY
---------------- | --------- | ------- | ------ | ------- | ------ | ----- | --------------- | --------------
ESRGAN           | ++        | +++     | +++    |         |        |       | +++             | ++
LSDIR-Plus-C     | ++        | +       | ++     | +       | +      |       | ++              | +
LSDIR-Plus-N     | +++       | ++      | ++     |         | +      |       | ++              | +++
LSDIR            | ++        | ++      | ++     | +       |        |       | ++              | +
NMKD-Siax        | +++       | +++     | +++    |         | +++    | ++    | +               | +
RealESRNET       | +         |         | ++     | ++      | ++     | +     | +               | +++
Remacri          | +++       | +       | +++    | ++      | ++     | ++    | +               | +
UltraSharp       | ++        | ++      | +++    | ++      | +++    | +++   |                 | ++