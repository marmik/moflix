<!DOCTYPE html>
<html>
<head>
    <title>Device Type Distribution - Line Chart</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            // Create a data table
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Device Type');
            data.addColumn('number', 'Count');

            // Retrieve device type distribution data from the database
            <?php
            $dbhost = "127.0.0.1";
            $dbname = "database";
            $dbuser = "root";
            $dbpass = "";

            $db = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);

            $sql = "SELECT device_type, COUNT(*) AS count FROM device_type GROUP BY device_type";
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach ($results as $row) {
                $deviceType = $row['device_type'];
                $count = $row['count'];
                echo "data.addRow(['$deviceType', $count]);";
            }
            ?>

            // Add an extra data point at the zero position
            var rowCount = data.getNumberOfRows();
            if (rowCount > 0) {
                var minValue = data.getColumnRange(1).min;
                if (minValue > 0) {
                    data.addRow(['', 0]);
                }
            }

            // Set chart options
            var options = {
                title: 'Device Type Distribution',
                legend: 'none',
                colors: ['#4285F4'],
                hAxis: {
                    title: 'Device Type'
                },
                vAxis: {
                    title: 'Count',
                    minValue: 0
                },
                curveType: 'function',
                chartArea: {
                    width: '90%',
                    height: '70%'
                },
                width: '100%'
            };

            // Create and draw the chart
            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
    <style>
        #chart_div {
            width: 100%;
            max-width: 1200px;
            height: 400px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div id="chart_div"></div>
</body>
</html>
