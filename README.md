# Schrödinger Equation for the Hydrogen Atom

This project documents a Partial Differential Equations and Complex Analysis study of the Schrödinger equation for the hydrogen atom. It focuses on deriving the time-independent hydrogen-atom solution using separation of variables in spherical coordinates, then visualizing selected spherical harmonics and hydrogen energy levels using MATLAB.

## Preview

![Spherical harmonics grid](public/images/projects/schrodinger-hydrogen-atom-pde/schrodinger-spherical-harmonics-grid.png)

The spherical harmonics grid shows selected normalized angular wave-function shapes for low-order quantum numbers.

![Hydrogen energy levels](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-energy-levels.png)

The energy-level plot visualizes the hydrogen spectrum using the relation `E_n = -13.6 / n^2` eV.

## Density Plot Outputs

The report includes density-plot outputs for selected hydrogen states. Instead of using the full report table as one image, the individual simulation outputs are kept as separate images and arranged below in Markdown.

| State `(n, l, m)` | 2D probability-density view | 3D probability-density view |
|---|---|---|
| `(2, 0, 0)` | ![2D density for 2-0-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-2-0-0-2d.png) | ![3D density for 2-0-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-2-0-0-3d.png) |
| `(3, 1, 0)` | ![2D density for 3-1-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-3-1-0-2d.png) | ![3D density for 3-1-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-3-1-0-3d.png) |
| `(4, 3, 0)` | ![2D density for 4-3-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-4-3-0-2d.png) | ![3D density for 4-3-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-4-3-0-3d.png) |

## Orbital Surface Outputs

The simulated surfaces of `|psi|^2` are also kept as individual images instead of using the full report table as a screenshot.

| State `(n, l, m)` | Simulated surface of `|psi|^2` |
|---|---|
| `(2, 0, 0)` | ![Orbital surface for 2-0-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-2-0-0.png) |
| `(3, 1, 0)` | ![Orbital surface for 3-1-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-3-1-0.png) |
| `(4, 3, 0)` | ![Orbital surface for 4-3-0](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-4-3-0.png) |

## Results

The hydrogen energy levels are summarized by:

```text
E_n = E_1 / n^2
E_1 = -13.6 eV
Therefore: E_n = -13.6 / n^2 eV
```

The hydrogen wave function is written as a product of radial and angular parts:

```text
psi_nlm(r, theta, phi) = R_nl(r) Y_l^m(theta, phi)
```

The normalized form reported in the project is:

```text
psi_nlm(r, theta, phi)
= sqrt((2 / (n a))^3 * (n - l - 1)! / (2n[(n + l)!]^3))
  * exp(-r / (n a))
  * (2r / (n a))^l
  * L_(n-l-1)^(2l+1)(2r / (n a))
  * Y_l^m(theta, phi)
```

The quantum-number constraints are:

```text
n = 1, 2, 3, ...
l = 0, 1, 2, ..., n - 1
m = -l, ..., 0, ..., l
```


## Contents

* `docs/` - final report PDF
* `matlab/` - MATLAB scripts for spherical harmonics and hydrogen energy levels
* `public/images/` - project images used in the README and portfolio page

## MATLAB Scripts

| File | Purpose |
|---|---|
| `matlab/sphericalHarmonics.m` | Plots a spherical harmonic surface for selected `L` and `M` values. |
| `matlab/plot_spherical_harmonics_grid.m` | Calls `sphericalHarmonics.m` for selected low-order harmonics and arranges them in a grid. |
| `matlab/plot_energy_levels.m` | Plots the first hydrogen energy levels using `E_n = -13.6 / n^2` eV. |

## Technical Overview

The report starts from the Schrödinger equation and applies the Hamiltonian operator to obtain the time-dependent form. The time-independent equation is then separated in spherical coordinates into radial and angular components.

The angular solution leads to spherical harmonics, which describe the angular part of the hydrogen wave functions. The radial solution leads to the hydrogen energy relation, where the energy levels follow an inverse-square dependence on the principal quantum number.

The MATLAB scripts support the final visualization stage of the project by plotting selected spherical harmonics and the hydrogen energy spectrum.

## How to Run / Review

Open MATLAB from the project root or from the `matlab/` folder.

To generate the spherical harmonics grid, run:

```matlab
matlab/plot_spherical_harmonics_grid.m
```

To generate the energy-level plot, run:

```matlab
matlab/plot_energy_levels.m
```

The final report is available at:

```text
docs/schrodinger-hydrogen-atom-report.pdf
```

## Limitations

This is a basic academic PDE/quantum-mechanics project focused on mathematical derivation and MATLAB visualization. It is not intended to be a full quantum-simulation software package.
