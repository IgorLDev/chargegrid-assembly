# Projeto Sustentável em Arquitetura de Computadores — Sprint 1

## Integrantes
- Arthur Costa — RM569976
- Guilherme Detta — RM569666
- Henrique Bolfer — RM569514
- Igor Alves — RM574127

---

## Problema
Os sistemas de eletropostos frequentemente utilizam software escrito em linguagens de alto nível e hardware genérico. Isso gera:
- Consumo desnecessário de energia.
- Baixa eficiência no processamento de dados.
- Desperdício de recursos computacionais.

---

## Proposta de Solução
Desenvolver um módulo de controle otimizado em **Assembly**, projetado para rodar em arquiteturas **RISC** (como RISC-V), que:
- Gerencie operações críticas (leitura de sensores, controle de carga, autenticação).
- Utilize instruções otimizadas do processador.
- Reduza ciclos de CPU e consumo energético.
- Seja compatível com sistemas embarcados de baixo consumo.

---

## Arquitetura Utilizada
- **RISC-V** como arquitetura base.
- Conceitos aplicados: pipeline, cache, ciclos de clock e eficiência energética por instrução.

---

## Exemplo de Código Assembly
Trecho inicial de definição de variáveis e mensagens:

```asm
.data
msg_start:      .string "ChargeGrid Controller iniciado\n"
msg_ok:         .string "Telemetry OK\n"
msg_shutdown:   .string "DESLIGANDO CARREGADOR\n"

current_val:    .word 50
voltage_val:    .word 160
temp_val:       .word 40
