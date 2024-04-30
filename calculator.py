# calculator.py
# flake8: noqa
def add(a, b):
    return a + b
# flake8: noqa
def main():
    print("Witaj w kalkulatorze!")
    
    while True:
        try:
            a = float(input("Podaj pierwszą liczbę: "))
            b = float(input("Podaj drugą liczbę: "))
            print("Wynik dodawania:", add(a, b))
        except ValueError:
            print("Błąd! Wprowadź poprawną liczbę.")
        except KeyboardInterrupt:
            print("\nDo widzenia!")
            break

if __name__ == "__main__":
    main()