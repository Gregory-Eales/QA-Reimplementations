import cirq
import numpy as np

class DeutschOracle(object):

    def __init__(self):

        self.x_gate = cirq.X
        self.hadmard_gate = Cirq.H

    def init_qubits(self, length=3):
        q = [cirq.GridQubit(i, j) for i in range(length) for j in range(length)]
        return q
