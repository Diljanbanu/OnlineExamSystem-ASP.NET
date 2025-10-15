
// Dashboard charts
if (document.getElementById('chart1')) {
    new Chart(document.getElementById('chart1'), {
        type: 'bar',
        data: { labels: ['Math', 'Science', 'English'], datasets: [{ label: 'Results', data: [85, 72, 90], backgroundColor: ['#0d6efd', '#198754', '#ffc107'] }] },
    });
}
if (document.getElementById('chart2')) {
    new Chart(document.getElementById('chart2'), {
        type: 'pie',
        data: { labels: ['Passed', 'Failed'], datasets: [{ data: [120, 30], backgroundColor: ['#198754', '#dc3545'] }] },
    });
}
