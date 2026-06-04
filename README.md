# Schrödinger Equation for the Hydrogen Atom

The project involves the study of the Schrödinger equation for the hydrogen atom, using partial differential equations and complex analysis. This project aims at obtaining the time-independent hydrogen-atom solution via separation of variables in spherical coordinates and then visualizing selected spherical harmonics, hydrogen wave-function solutions, orbital surfaces, and hydrogen energy levels through MATLAB-generated plots.

## Preview

![Spherical harmonics grid](public/images/projects/schrodinger-hydrogen-atom-pde/schrodinger-spherical-harmonics-grid.png)

The spherical harmonics grid shows selected normalized angular wave-function shapes for low-order quantum numbers.

![Hydrogen energy levels](public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-energy-levels.png)

The energy-level plot visualizes the hydrogen spectrum using the inverse-square relationship between the energy level and the principal quantum number.

## Probability-Density Outputs

<table>
  <thead>
    <tr>
      <th>State <code>(n, l, m)</code></th>
      <th>2D probability-density view</th>
      <th>3D probability-density view</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>(2, 0, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-2-0-0-2d.png" alt="2D probability-density plot for n equals 2, l equals 0, m equals 0" width="360">
      </td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-2-0-0-3d.png" alt="3D probability-density plot for n equals 2, l equals 0, m equals 0" width="360">
      </td>
    </tr>
    <tr>
      <td><code>(3, 1, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-3-1-0-2d.png" alt="2D probability-density plot for n equals 3, l equals 1, m equals 0" width="360">
      </td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-3-1-0-3d.png" alt="3D probability-density plot for n equals 3, l equals 1, m equals 0" width="360">
      </td>
    </tr>
    <tr>
      <td><code>(4, 3, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-4-3-0-2d.png" alt="2D probability-density plot for n equals 4, l equals 3, m equals 0" width="360">
      </td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-density-4-3-0-3d.png" alt="3D probability-density plot for n equals 4, l equals 3, m equals 0" width="360">
      </td>
    </tr>
  </tbody>
</table>

## Orbital Surface Outputs

<table>
  <thead>
    <tr>
      <th>State <code>(n, l, m)</code></th>
      <th>Simulated surface of $|\boldsymbol{\psi}|^2$</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>(2, 0, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-2-0-0.png" alt="Hydrogen orbital surface for n equals 2, l equals 0, m equals 0" width="430">
      </td>
    </tr>
    <tr>
      <td><code>(3, 1, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-3-1-0.png" alt="Hydrogen orbital surface for n equals 3, l equals 1, m equals 0" width="430">
      </td>
    </tr>
    <tr>
      <td><code>(4, 3, 0)</code></td>
      <td>
        <img src="public/images/projects/schrodinger-hydrogen-atom-pde/hydrogen-orbital-surface-4-3-0.png" alt="Hydrogen orbital surface for n equals 4, l equals 3, m equals 0" width="430">
      </td>
    </tr>
  </tbody>
</table>

## Results

The final results give the hydrogen energy levels, the general hydrogen wave-function form, and the quantum-number constraints.

### Hydrogen energy levels

$$E_n = -\left[\frac{m}{2\hbar^2}\left(\frac{e^2}{4\pi\varepsilon_0}\right)^2\right]\frac{1}{n^2} = \frac{E_1}{n^2}$$

### Hydrogen wave-function form

$$\psi_{nlm}(r,\theta,\phi)=\sqrt{\left(\frac{2}{na}\right)^3\frac{(n-l-1)!}{2n[(n+l)!]^3}}e^{-r/(na)}\left(\frac{2r}{na}\right)^l L_{n-l-1}^{2l+1}\left(\frac{2r}{na}\right)Y_l^m(\theta,\phi)$$

### Quantum-number constraints

$$n = 1, 2, 3, \ldots$$

$$l = 0, 1, 2, \ldots, n - 1$$

$$m = -l, \ldots, 0, \ldots, l$$

### Constants used in these equations

| Symbol | Meaning |
|---|---|
| $E_n$ | Energy per level |
| $m$ in the energy formula | Equivalent mass at the center of gravity between electron and nucleus |
| $\hbar$ | Reduced Planck's constant |
| $e$ | Electric charge |
| $\varepsilon_0$ | Permittivity of free space |
| $n$ | Principal quantum number |
| $l$ | Azimuthal quantum number |
| $m$ | Magnetic quantum number |
| $a$ | Bohr radius |

## Main Features

* Derivation of the time-independent Schrödinger equation for the hydrogen atom
* MATLAB visualization of selected spherical harmonics
* MATLAB visualization of hydrogen energy levels
* Individual probability-density and orbital-surface output images

## Technical Overview

The project starts with Schrödinger equation and uses Hamiltonian operator to get the time-dependent form. Then the time independent equation is separated in spherical coordinates into a radial and an angular part.

The angular solution gives the spherical harmonics, which represent the angular part of the hydrogen wave functions. The radial solution provides the hydrogen energy relation, where the energy levels are proportional to the inverse square of the principal quantum number.

The MATLAB scripts are used to aid in the final visualization step of the project by plotting some spherical harmonics and the hydrogen energy spectrum.

## How to Run / Review

Open MATLAB from the project root.

To generate the spherical harmonics grid, run:

```matlab
plot_spherical_harmonics_grid.m
```

To generate the energy-level plot, run:

```matlab
plot_energy_levels.m
```

The final report is available at:

```text
[Schrodinger Equation for Hydrogen Atom Report](https://drive.google.com/file/d/1A0GI4gs1n4FiytFHT8X_bnLk8NrdisXF/view?usp=sharing)
```
