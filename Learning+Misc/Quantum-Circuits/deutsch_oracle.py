import cirq
import numpy as np

class DeutschOracle(object):

    def __init__(self):

        self.circuit = cirq.Circuit()
        self.x_gate = cirq.X
        self.hadmard_gate = cirq.H
        self.measure_gate = cirq.MeasurementGate

    def init_qubits(self, length=3):
        q = [cirq.GridQubit(i, j) for i in range(length) for j in range(length)]
        return q
