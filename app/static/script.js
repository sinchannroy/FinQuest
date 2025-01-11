// Function to generate a stock price line chart
function generateStockChart(data, stockName) {
    const ctx = document.getElementById('stockChart').getContext('2d');

    // Extracting data for the chart
    const labels = data.map(row => row.month_year);
    const closePrices = data.map(row => row.close_price);

    // Creating the chart
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: `${stockName} Closing Prices`,
                data: closePrices,
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderWidth: 2,
                tension: 0.4
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                }
            },
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Month-Year'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: 'Closing Price'
                    },
                    beginAtZero: true
                }
            }
        }
    });
}

// Event listener for loading the chart
document.addEventListener('DOMContentLoaded', function () {
    const stockDataElement = document.getElementById('stockData');
    const stockName = stockDataElement.getAttribute('data-stock-name');
    const stockData = JSON.parse(stockDataElement.textContent);

    // Generate the stock chart
    generateStockChart(stockData, stockName);
});
