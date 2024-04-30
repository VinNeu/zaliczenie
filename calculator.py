# calculator.py
import time, random
# flake8: noqa
def add(a, b):
    return a + b
# flake8: noqa
def main():
    print("Witaj w kalkulatorze!")
    
    while True:
        try:
            a = random.randint(0,999)
            b = random.randint(0,999)
            print("Wynik dodawania:", add(a, b))
        except ValueError:
            print("Błąd! Wprowadź poprawną liczbę.")
        except KeyboardInterrupt:
            print("\nDo widzenia!")
            break

        time.sleep(5)

if __name__ == "__main__":
    main()