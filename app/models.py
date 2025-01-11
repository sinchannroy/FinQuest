from . import db

class StockPrice(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    stock_name = db.Column(db.String(50), nullable=False)
    month_year = db.Column(db.String(10), nullable=False)
    open_price = db.Column(db.Float, nullable=False)
    close_price = db.Column(db.Float, nullable=False)
    high_price = db.Column(db.Float, nullable=False)
    low_price = db.Column(db.Float, nullable=False)
    volume = db.Column(db.Integer, nullable=False)
