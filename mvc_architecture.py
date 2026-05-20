# Mock estruturado da arquitetura interna do backend (padrão MVC)
# Demonstração conceitual

class DispositivoModel:
    """ Representa a Camada Model (M) - Regras de Dados e Validações """
    def __init__(self, name, device_id):
        self.name = name
        self.device_id = device_id
        self.is_active = True

    def calcular_consumo_kwh(self, potencia_w, tempo_horas):
        # TDD com foco na lógica de negócio matemática
        return (potencia_w * tempo_horas) / 1000

class ControllerIoT:
    """ Representa a Camada Controller (C) - Intermediário Lógico """
    def __init__(self, model):
        self.model = model

    def receber_sinal_sensor(self, token, potencia):
        if not token or potencia < 0:
            return {"status": 400, "msg": "Bad Data / Code Smell evitado"}
        return {"status": 200, "msg": f"Telemetria gravada para {self.model.name}"}