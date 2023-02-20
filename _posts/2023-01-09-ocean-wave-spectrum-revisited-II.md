---
layout: distill
title:  "Ocean Surface Wave Spectrum Revisited &mdash; Part II: From Surface Displacement to the Ocean Wave Spectrum"
date:   2023-01-09
description: The second part of the update to my (incomplete) review on spectral models for ocean waves
tags: ocean spectrum
categories: ocean-waves
giscus_comments: true

authors:
  - name: Murilo Silva
    url: "https://murilotsilva.github.io"
    affiliations:
      name: C-CORE

bibliography: MasterLibrary.bib


toc:
  - name: Introduction
  - name: From Ocean Surface Displacement to the Ocean Wave Spectrum
    subsections:
        - name: Directional Ocean Wave Spectrum
        - name: Non-Directional Ocean Wave Spectrum and Directional Factor
  - name: Next Steps

img: assets/img/1024px-A_colored_version_of_the_Big_wave_from_100_views_of_the_Fuji,_2nd_volume.jpg
hero: assets/img/1024px-A_colored_version_of_the_Big_wave_from_100_views_of_the_Fuji,_2nd_volume.jpg
---


<div class="l-body">
    {% include figure.html path="assets/img/1024px-A_colored_version_of_the_Big_wave_from_100_views_of_the_Fuji,_2nd_volume.jpg" class="img-fluid rounded z-depth-1" caption="Kaijo no Fuji, from the second volume of the 100 Views of Mount Fuji, 1834, by <a href='https://en.wikipedia.org/wiki/Hokusai'>Hokusai</a>" zoomable=true %}
</div>

This is the second part of the update to my research note entitled [Ocean Surface Wave Spectrum](https://www.researchgate.net/publication/283722827_Ocean_Surface_Wave_Spectrum) that I published on my ResearchGate. If you want to read the first part, [click here](/blog/2022/ocean-wave-spectrum-revisited/).

***

## From Ocean Surface Displacement to the Ocean Wave Spectrum

As described in [Part I](/blog/2022/ocean-wave-spectrum-revisited/), the ocean surface can be described as the superimposition and interaction of individual waves, each one with a different history, stage of development, direction, generating and restoring forces, and time and length scales. A visualization of the interaction between ocean waves is shown in the diagram by Shearman <d-cite key="Shearman1983"></d-cite> reproduced here. 
<div class="l-body">
    {% include figure.html path="assets/img/WaveSuperimposition_wide.png" class="img-fluid rounded z-depth-1 l-gutter" caption="Diagram by Shearman <d-cite key='Shearman1983'></d-cite> presenting the superposition of ocean waves" %}
</div>

In theory, using the superposition of linear waves as presented by Feddersen <d-cite key="Feddersen2019"></d-cite>, it is possible to simulate the behaviour of a patch on the ocean surface (to a certain extent) by modelling the generation, travel and interactions of each wave within and in the vicinity of the patch. However, such simulation would require an impossible amount of prior knowledge and immense computational capabilities &mdash; and that excludes wave-to-wave interactions such as the ones described by Longuet-Higgins <d-cite key="LonguetHiggins1963"></d-cite>, Hasselmann <d-cite key="Hasselmann1962"></d-cite><d-cite key="Hasselmann1963a"></d-cite><d-cite key="Hasselmann1963"></d-cite>, or the ones summarized by Massel <d-cite key="Massel2017"></d-cite>. Therefore, the use of stochastic theory can be applied in this situation, modelling the ocean as a time-varying random surface.

From the tools available to treat random surfaces, **spectral analysis** is the best suited to extract the energy, spatial and frequency characteristics of the ocean surface. In simple terms, the goal of the spectral analysis of the ocean surface is to mathematically "reverse" the process of wave superposition, following the diagram in the figure backwards to identify the energy and dominant direction for a given wavelength. This information is encapsulated in the [power spectral density](https://en.wikipedia.org/wiki/Spectral_density) of the ocean waves, also known as the **ocean wave spectrum**, usually represented as a function of wave frequency or wavenumber. A detailed treatment of the spectral analysis of the ocean waves is presented by Massel <d-cite key="Massel2017"></d-cite>, while Donelan et al. <d-cite key="Donelan1985"></d-cite> present a more straightforward explanation.

### Directional Ocean Wave Spectrum

At any given point of the ocean surface, the vertical displacement caused by the ocean waves can be represented by a time-varying random process $$\zeta(\vec{\rho},t)$$, where $$\vec{\rho} = (x,y) = \rho\angle\theta_r$$ is the position of a point on the ocean surface. According to the [Wiener-Khinchin theorem](https://en.wikipedia.org/wiki/Wiener%E2%80%93Khinchin_theorem), the power spectral density of a [wide-sense stationary](https://en.wikipedia.org/wiki/Stationary_process#Weak_or_wide-sense_stationarity) random process can be defined as the Fourier transform of its autocorrelation function. If the surface displacement $$\zeta(\vec{\rho},t)$$ is assumed to be a wide-sense stationary and [ergodic](https://en.wikipedia.org/wiki/Ergodic_process) process with mean $$E\left\{\zeta(\vec{\rho},t)\right\} = \overline{\zeta} = 0$$, the autocorrelation of the ocean surface can be written as <d-cite key="Massel2017"></d-cite><d-cite key="Donelan1985"></d-cite>

<p style="overflow-x: auto; overflow-y: hidden;">
$$
R({\vec{r}}, \tau)  = E \left\{ \zeta(\vec{r},t) \overline{\zeta(\vec{\rho} + \vec{r},t + \tau)} \right\}\nonumber
$$
</p>

where $$\vec{r}$$ and $$\tau$$ are the space and time lags for the autocorrelation, and the overbar indicates the conjugate of the function. Therefore, the **wavenumber-frequency spectrum** of the ocean surface can be defined as

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Psikw}
\Psi(\vec{k},\omega) = \frac{1}{(2\pi)^3}\iiint R({\vec{r}}, \tau)
\exp[-j(\vec{k}\cdot \vec{r} + \omega \tau)] \mathrm{d} \vec{r}\mathrm{d}\tau.
\end{equation}
$$
</p>

where $$\vec{k} = (k_x,k_y) = (k\cos\theta,k\sin\theta)$$ is the spatial frequency vector of a wave moving in the $$\theta$$ direction with wave number $$k = \frac{2\pi}{\lambda}$$. The wavenumber-frequency spectrum is the most complete spectral description of the ocean surface, as it has the advantage of being independent of the dispersion relation of the ocean waves. However, its practical use is not as common as the **directional ocean wave spectrum**, which provides a spectral description of the ocean surface using only the wave frequency (or wavenumber) and the wave direction for each frequency. As described by Donelan et al. <d-cite key="Donelan1985"></d-cite>, the frequency-dependent directional ocean wave spectrum can be obtained by integrating the wavenumber-frequency spectrum over the wave number $$k$$:

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Hatswtheta}
\hat{S}(\omega,\theta) = 2\int\limits_{0}^{\infty} \Psi(\vec{k},\omega) k\mathrm{d} k.
\end{equation}
$$
</p>

Since the ocean waves are dispersive with a known dispersion relation for specific cases, it is more common to approximate the ocean wave spectrum using the dispersion relation of the ocean waves, as it facilitates the integration in \eqref{eqn:Hatswtheta}. Assuming that the dispersion relations derived in [Part I](/blog/2022/ocean-wave-spectrum-revisited/) hold, the frequency-dependent directional ocean wave spectrum for deep-water waves can be approximated as <d-cite key="Donelan1985"></d-cite>

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Swtheta}
{S}(\omega,\theta) = 2\int\limits_{0}^{\infty} \Psi(\vec{k},\omega)\delta\left(k-\frac{\omega^2}{g}\right) k\mathrm{d} k,\  \omega \geq 0
\end{equation}
$$
</p>

According to Donelan et al. <d-cite key="Donelan1985"></d-cite>, this is the expression used to define some of the common directional ocean wave spectrum models, such as the ones proposed by Longuet-Higgins <d-cite key="LonguetHiggins1963"></d-cite> and Mitsuyasu et al. <d-cite key="Mitsuyasu1975"></d-cite>.

While it is common for studies in physical oceanography to express ocean wave spectrum models as a function of wave frequency, HF-radar scattering studies usually employ the wavenumber spectrum; this is especially true for works related to the radar cross-section of the ocean surface in the HF band. Similar to the \eqref{eqn:Swtheta}, the approximation of the wavenumber-dependent directional ocean wave spectrum for deep-water waves can be defined as follows:

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Sktheta}
{S}(k,\theta) = 2\int\limits_{0}^{\infty} \Psi(\vec{k},\omega)\delta\left(\omega-\sqrt{gk}\right) \mathrm{d} \omega.
\end{equation}
$$
</p>

As described by Massel <d-cite key="Massel2017"></d-cite>, using a change of variables and comparing the two expressions, the relationship between the frequency-dependent and wavenumber-dependent spectra for deep-water waves is defined as

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:SktoSw}
S(k,\theta) = \frac{1}{2}\sqrt{\frac{g}{k^3}} {S}(\omega,\theta)|_{\omega = \sqrt{gk}}.
\end{equation}
$$
</p>

Therefore, even if a model is presented as a frequency-dependent spectrum, the wavenumber-dependent spectrum can be obtained using \eqref{eqn:SktoSw}. Since the spectral models for the ocean surface are usually described as a function of frequency, and knowing that the wavenumber spectrum can be obtained from the frequency spectrum, the derivations from this point onward in these notes are going to focus on the frequency-dependent ocean wave spectrum.

### Non-Directional Ocean Wave Spectrum and Directional Factor

Due to the complexity of wave-wave and wind-wave interactions, obtaining accurate directional information from the ocean surface is a complicated technical problem. Therefore, the majority of the experiments designed to obtain surface displacement information focuses on obtaining the frequency spectrum of the ocean surface, with the directional information obtained through empirical parameters and mathematical models of the directional spreading of ocean waves <d-cite key="Niedzwecki1991"></d-cite>. Therefore, for modelling purposes, the ocean wave spectrum models are usually defined as a product of two functions <d-cite key="Massel2017"></d-cite>:

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\hat{S}(\omega,\theta) = \hat{S}(\omega)D(\theta,\omega,p_1,p_2,\cdots)
$$
</p>

The functions are defined as follows:

- $$\hat{S}(\omega)$$: a frequency spectrum, containing the energy information for each wave frequency on the ocean surface;
- $$D(\theta,\omega)$$ : a directional factor, which relates wave frequencies and their dominant wave directions. The parameters for the directional factor are:
  - $$\theta$$: direction of observation for the wave with frequency equal to $$\omega$$;
  - $$\omega$$: frequency of the wave being observed;
  - $$p_1,p_2,\cdots$$: empirical parameters used to describe the directional spreading of the ocean waves. For simplicity, these parameters will be omitted unless required for the analysis.
 
From the directional spectra, the frequency spectrum can be obtained by further integrating the wavenumber-frequency spectrum in \eqref{eqn:Swtheta} over $$\theta$$:

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Sw}
\begin{aligned}
\hat{S}(\omega) &= 2\int\limits_{-\pi}^{\pi}\int\limits_{0}^{\infty} \Psi(\vec{k},\omega) k\mathrm{d}{k}\mathrm{d}{\theta} \\
                &= \int\limits_{-\pi}^{\pi} \hat{S}(\omega,\theta)\mathrm{d}\theta,\  \omega \geq 0
\end{aligned}
\end{equation}
$$
</p>

Based on the definition of the frequency spectrum shown in \eqref{eqn:Sw}, the directional factor is then defined such that

<p>
$$
\int\limits_{-\pi}^{\pi} D(\theta,\omega)\mathrm{d}\theta = 1,\  \forall \omega.
$$
</p>

A similar definition can be obtained for the approximation of the ocean wave spectrum for deep-water waves. The frequency spectrum in this case can be defined as

<p style="overflow-x: auto; overflow-y: hidden;">
$$
\begin{equation}
\label{eqn:Swdw}
\begin{aligned}
{S}(\omega) &= 2\int\limits_{-\pi}^{\pi}\int\limits_{0}^{\infty} \Psi(\vec{k},\omega) \delta\left(k-\frac{\omega^2}{g}\right) k\mathrm{d} k\mathrm{d}{\theta} \\
            &= \int\limits_{-\pi}^{\pi} {S}(\omega,\theta)\mathrm{d}\theta,\  \omega \geq 0.
\end{aligned}
\end{equation}
$$
</p>

## Next Steps

Now that the directional spectrum has been mathematically defined, we will dive into the frequency spectrum more specifically. The next installment of this series will explore the similarity laws for the frequency spectrum, which will help us define the important variables to define a model for the ocean surface.

If you are interested in the directional factors, don't worry. The different models for the directional factor will be explored in future installments of this series.
