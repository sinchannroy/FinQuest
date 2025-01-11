-- Create the stock_prices table
CREATE TABLE stock_prices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stock_name TEXT NOT NULL,
    month_year TEXT NOT NULL,
    open_price REAL NOT NULL,
    close_price REAL NOT NULL,
    high_price REAL NOT NULL,
    low_price REAL NOT NULL,
    volume INTEGER NOT NULL
);

-- Insert sample data into the stock_prices table
INSERT INTO stock_prices (stock_name, month_year, open_price, close_price, high_price, low_price, volume) VALUES
('AAPL', '2013-01', 67.85, 71.23, 72.50, 65.70, 15000000),
('AAPL', '2013-02', 70.00, 74.22, 75.30, 69.00, 13000000),
('AAPL', '2013-03', 74.15, 79.14, 80.00, 73.20, 17000000),
('AAPL', '2023-01', 150.00, 155.00, 160.00, 148.00, 50000000),
('AAPL', '2023-02', 155.20, 160.50, 165.00, 150.00, 52000000),

('GOOG', '2013-01', 700.00, 750.00, 760.00, 680.00, 8000000),
('GOOG', '2013-02', 750.00, 770.00, 780.00, 740.00, 8500000),
('GOOG', '2013-03', 770.00, 800.00, 820.00, 760.00, 9000000),
('GOOG', '2023-01', 2800.00, 2900.00, 2950.00, 2750.00, 30000000),
('GOOG', '2023-02', 2900.50, 2955.00, 3000.00, 2850.00, 31000000),

('MSFT', '2013-01', 26.00, 28.50, 30.00, 25.00, 20000000),
('MSFT', '2013-02', 28.50, 30.00, 32.00, 27.50, 22000000),
('MSFT', '2013-03', 30.50, 33.00, 34.00, 30.00, 23000000),
('MSFT', '2023-01', 300.00, 310.00, 315.00, 295.00, 40000000),
('MSFT', '2023-02', 310.00, 320.00, 325.00, 305.00, 42000000);
