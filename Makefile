# Instalacja zależności z pliku requirements.txt
deps:
    @echo "Instalowanie zależności..."
    pip install -r requirements.txt

# Uruchomienie lintera
lint:
    @echo "Uruchamianie lintera..."
    flake8 --ignore=E501 calculator.py test_calculator.py

# Uruchomienie aplikacji
run:
    @echo "Uruchamianie aplikacji..."
    python calculator.py


# Wykonanie testów
test:
    @echo "Uruchamianie testów..."
    pytest test_calculator.py
    @if [ $$? -eq 0 ]; then \
        echo "Testy zakończone pomyślnie!"; \
    else \
        echo "Testy nie powiodły się."; \
    fi