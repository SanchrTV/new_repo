CREATE TABLE car_sales_by_month (
    id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    month INT NOT NULL CHECK (month >= 1 AND month <= 12),
    brand TEXT NOT NULL,
    model TEXT NOT NULL,
    units_sold INT NOT NULL
);

INSERT INTO car_sales_by_month (year, month, brand, model, units_sold)
VALUES
(2024, 1, 'Toyota', 'Corolla', 120),
(2024, 1, 'Honda', 'Civic', 95),
(2024, 1, 'Ford', 'Focus', 50),
(2024, 2, 'Toyota', 'Corolla', 125),
(2024, 2, 'Honda', 'Accord', 100),
(2024, 2, 'Ford', 'Fiesta', 60),
(2024, 3, 'Toyota', 'Camry', 140),
(2024, 3, 'Honda', 'Civic', 110),
(2024, 3, 'Ford', 'Focus', 55),
(2024, 4, 'Toyota', 'RAV4', 100),
(2024, 4, 'Honda', 'CR-V', 75),
(2024, 4, 'Ford', 'Mondeo', 45),
(2024, 5, 'Toyota', 'Camry', 150),
(2024, 5, 'Honda', 'Civic', 85),
(2024, 5, 'Ford', 'Focus', 60),
(2024, 6, 'Toyota', 'RAV4', 120),
(2024, 6, 'Ford', 'Kuga', 65),
(2024, 6, 'Honda', 'CR-V', 85),
(2024, 7, 'Toyota', 'Camry', 160),
(2024, 7, 'Ford', 'Kuga', 55),
(2024, 8, 'Toyota', 'Corolla', 115),
(2024, 8, 'Honda', 'Accord', 95),
(2024, 8, 'Ford', 'Fiesta', 50),
(2024, 9, 'Toyota', 'RAV4', 120),
(2024, 9, 'Honda', 'CR-V', 90),
(2024, 9, 'Ford', 'Kuga', 70),
(2024, 10, 'Toyota', 'Camry', 145),
(2024, 10, 'Honda', 'Civic', 105),
(2024, 10, 'Ford', 'Focus', 65),
(2024, 11, 'Toyota', 'Corolla', 130),
(2024, 11, 'Honda', 'Accord', 88),
(2024, 11, 'Ford', 'Mondeo', 40),
(2024, 12, 'Toyota', 'RAV4', 90),
(2024, 12, 'Honda', 'Civic', 112),
(2024, 12, 'Ford', 'Focus', 75),
(2024, 12, 'Ford', 'Kuga', 55),
(2024, 12, 'Honda', 'HR-V', 78);