.PHONY: sim test flash hil doc

sim:
	python3 src/sim/door_model.py

test:
	pytest tests/mil

flash:
	@echo "Загрузка прошивки на STM32 (заглушка)"

hil:
	python3 hil/rpi/monitor.py

doc:
	plantuml docs/logic_statechart.puml
