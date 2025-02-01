import pytest
import sys
import calculator

def test_add():
    assert calculator.add(2, 3) == 5
    assert calculator.add(-1, 1) == 0
    assert calculator.add(-1, -1) == -2

def test_subtract():
    assert calculator.subtract(10, 5) == 5
    assert calculator.subtract(-1, -1) == 0
    assert calculator.subtract(-1, 1) == -2

def test_multiply():
    assert calculator.multiply(3, 4) == 12
    assert calculator.multiply(-1, 1) == -1
    assert calculator.multiply(0, 10) == 0

def test_divide():
    assert calculator.divide(10, 2) == 5
    assert calculator.divide(-4, 2) == -2
    assert calculator.divide(5, 2) == 2.5

def test_divide_by_zero():
    with pytest.raises(ValueError) as exc_info:
        calculator.divide(10, 0)
    assert str(exc_info.value) == "Cannot divide by zero"

@pytest.mark.parametrize(
    "base, exponent, expected",
    [
        (2, 3, 8),
        (1, 5, 1),
        (0, 5, 0),
        (5, 0, 1),
        (-2, 3, -8),
        (2, -2, 0.25),
    ]
)
def test_power(calc, base, exponent, expected):
    assert calc.power(base, exponent) == expected


@pytest.mark.slow
def test_heavy_computation(calc):
    import time
    time.sleep(5)  # Симуляция долгой операции
    assert calc.multiply(1000, 1000) == 1000000


@pytest.mark.skipif(sys.platform == "win32", reason="Does not run on Windows")
def test_specific_platform(calc):
    # Тест, специфичный для Unix-систем
    assert calc.divide(10, 2) == 5


@pytest.mark.xfail(reason="Known bug in version 1.0")
def test_known_issue(calc):
    # Нарочно неправильное ожидание
    assert calc.subtract(10, 5) == 6
