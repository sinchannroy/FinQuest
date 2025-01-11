from flask import render_template, request, jsonify
from .models import db, StockPrice
from . import create_app

app = create_app()

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/analytics', methods=['POST'])
def analytics():
    stock_name = request.form.get('stock_name')
    results = StockPrice.query.filter_by(stock_name=stock_name).all()

    # Prepare data for rendering
    data = [
        {
            'month_year': stock.month_year,
            'open_price': stock.open_price,
            'close_price': stock.close_price,
            'high_price': stock.high_price,
            'low_price': stock.low_price,
            'volume': stock.volume,
        }
        for stock in results
    ]

    return render_template('analytics.html', stock_name=stock_name, data=data)
