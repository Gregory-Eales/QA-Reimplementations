<h1 align="center"> Bernstein-Vazirani Algorithm </h1>

<h4 align="center"> Reimplementation of the Bernstein-Vazirani Algorithm </h4>

<p align="center">
  <img src="https://img.shields.io/badge/Python-v3.6+-blue.svg">
  <img src="https://img.shields.io/badge/Dependency-v1.3-orange.svg">
  <img src="https://img.shields.io/badge/Build-Passing-green.svg">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg">
</p>

<p align="center">
  <a href="#About">About</a> •
  <a href="#Requirements">Requirements</a> •
  <a href="#Algorithm">Algorithm</a> •
  <a href="#Implementation">Implementationt</a> •
  <a href="#Results">Results</a> •
  <a href="#Sources">Sources</a>
</p>

## About:
The Bernstein-Vazirani algorithm is a constrained version of the Deutch-Jozsa algorithm that uses a single type of oracle. This orcale performs a dot product with an input string and an interal string of the same length producing either a 1 or a 0 by applying a modulo 2. This means the oracle is telling you whether the result of the dot product is either even or odd. This algorithms solves the problem of finding hidden string.

## Requirements:
- cirq
- python 3

## Algorithm:

 The oracle used in this algorithm gives <img src="https://render.githubusercontent.com/render/math?math=f\{0, 1\}^{n} \rightarrow \{0, 1\}"> by using a dot product and modulo 2 with a hidden string. 

<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/bff660e62e6a060c9f1a275fc8bc8c34a12264fe">

<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/e97fee904c19e4fea87ec50004d2ae85626963f8">

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Bernstein-Vazirani_algorithm_scheme.svg/2232px-Bernstein-Vazirani_algorithm_scheme.svg.png">

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Bernstein-Vazirani_quantum_circuit.png/440px-Bernstein-Vazirani_quantum_circuit.png">


## Implementation:
- explain the data and the goal
- show screenshots/tables/plots

## Results:
- show end result 
- include closing thoughts + improvements

## Sources:
- show sources

## Meta:

Gregory Eales – [@GregoryHamE](https://twitter.com/GregoryHamE) – gregory.hamilton.e@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/Gregory-Eales](https://github.com/Gregory-Eales)



