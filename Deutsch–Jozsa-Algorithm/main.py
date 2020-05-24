import qsharp

from DeutschJozsa import SayHello, Zero_Oracle, Deutsch_Jozsa

SayHello.simulate()

Deutsch_Jozsa.simulate(N=10, oracle=Zero_Oracle)

