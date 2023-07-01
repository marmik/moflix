<?php require '../controller/sidebar.php'; ?>  

<!--Page Container-->
<section class="page-container">
    <div class="page-content-wrapper">

        <!--Main Content-->
        <div class="content sm-gutter">
            <div class="container-fluid padding-25 sm-padding-10">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h4>Sections</h4>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $movies_total; ?></div>
                            <i class="dripicons-camcorder i-icon"></i>
                            <p class="label">Movies</p>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $songs_total; ?></div>
                            <i class="dripicons-music i-icon"></i>
                            <p class="label">Songs</p>
                        </div>
                    </div>
                                   
                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $genres_total; ?></div>
                            <i class="dripicons-tags i-icon"></i>
                            <p class="label">Genres</p>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $series_total; ?></div>
                            <i class="dripicons-media-next i-icon"></i>
                            <p class="label">Series</p>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $episodes_total; ?></div>
                            <i class="dripicons-view-list i-icon"></i>
                            <p class="label">Episodes</p>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="block counter-block mb-4">
                            <div class="value"><?php echo $users_total; ?></div>
                            <i class="dripicons-user i-icon"></i>
                            <p class="label">Users</p>
                        </div>
                    </div>
                    

                </div>
                <div class="col-12">
                    <div class="section-title">
                        <h4>Visitors by Devices</h4>
                    </div>
                </div>
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

                
                <div class="col-12">
                        <div class="section-title">
                            <h4>Visual Charts</h4>
                        </div>
                    </div>
                            <?php
                                error_reporting(E_ALL);
                                ini_set('display_errors', 1);

                                // Database connection info
                                $dbhost = "127.0.0.1";
                                $dbname = "database";
                                $dbuser = "root";
                                $dbpass = "";

                                // Connect to the database
                                $db = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);

                                // Query to get the number of movies in each genre
                                $sql_movies = "SELECT genre_title, COUNT(*) AS num_movies 
                                            FROM genres 
                                            INNER JOIN movies_genres ON genres.genre_id = movies_genres.genre_id 
                                            GROUP BY genres.genre_id";

                                // Query to get the number of songs in each genre
                                $sql_songs = "SELECT genre_title, COUNT(*) AS num_songs 
                                            FROM genres 
                                            INNER JOIN songs_genres ON genres.genre_id = songs_genres.genre_id 
                                            GROUP BY genres.genre_id";

                                // Query to get the number of series in each genre
                                $sql_series = "SELECT genre_title, COUNT(*) AS num_series 
                                            FROM genres 
                                            INNER JOIN series_genres ON genres.genre_id = series_genres.genre_id 
                                            GROUP BY genres.genre_id";

                                // Execute the queries and fetch the results
                                $stmt_movies = $db->prepare($sql_movies);
                                $stmt_movies->execute();
                                $results_movies = $stmt_movies->fetchAll(PDO::FETCH_ASSOC);

                                $stmt_songs = $db->prepare($sql_songs);
                                $stmt_songs->execute();
                                $results_songs = $stmt_songs->fetchAll(PDO::FETCH_ASSOC);

                                $stmt_series = $db->prepare($sql_series);
                                $stmt_series->execute();
                                $results_series = $stmt_series->fetchAll(PDO::FETCH_ASSOC);

                                // Prepare data for the pie charts
                                $data_movies = array();
                                foreach ($results_movies as $row) {
                                    $data_movies[$row['genre_title']] = intval($row['num_movies']);
                                }

                                $data_songs = array();
                                foreach ($results_songs as $row) {
                                    $data_songs[$row['genre_title']] = intval($row['num_songs']);
                                }

                                $data_series = array();
                                foreach ($results_series as $row) {
                                    $data_series[$row['genre_title']] = intval($row['num_series']);
                                }

                                // Create data strings for the pie charts
                                $chart_data_movies = "['Genre', 'Number of Movies'],";
                                foreach ($data_movies as $genre => $num_movies) {
                                    $chart_data_movies .= "['$genre', $num_movies],";
                                }
                                $chart_data_movies = rtrim($chart_data_movies, ",");

                                $chart_data_songs = "['Genre', 'Number of Songs'],";
                                foreach ($data_songs as $genre => $num_songs) {
                                    $chart_data_songs .= "['$genre', $num_songs],";
                                }
                                $chart_data_songs = rtrim($chart_data_songs, ",");

                                $chart_data_series = "['Genre', 'Number of Series'],";
                                foreach ($data_series as $genre => $num_series) {
                                    $chart_data_series .= "['$genre', $num_series],";
                                }
                                $chart_data_series = rtrim($chart_data_series, ",");
                                ?>

                                <!DOCTYPE html>
                                <html>
                                <head>
                                    <title>Pie Charts - Media by Genre</title>
                                    <style>
                                        .chart-container {
                                            display: inline-block;
                                            width: 30%;
                                            height: 300px;
                                            margin-right: 10px;
                                        }
                                        
                                        @media (max-width: 768px) {
                                            .chart-container {
                                                width: 100%;
                                                margin-right: 0;
                                                margin-bottom: 20px;
                                            }
                                        }
                                    </style>
                                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                                    <script type="text/javascript">
                                        google.charts.load('current', {'packages':['corechart']});
                                        google.charts.setOnLoadCallback(drawCharts);

                                        function drawCharts() {
                                            // Movies Pie Chart
                                            var data_movies = google.visualization.arrayToDataTable([
                                                <?php echo $chart_data_movies; ?>
                                            ]);

                                            var options_movies = {
                                                title: 'Movies by Genre',
                                                is3D: true,
                                            };

                                            var chart_movies = new google.visualization.PieChart(document.getElementById('chart_movies'));

                                            chart_movies.draw(data_movies, options_movies);

                                            // Songs Pie Chart
                                            var data_songs = google.visualization.arrayToDataTable([
                                                <?php echo $chart_data_songs; ?>
                                            ]);

                                            var options_songs = {
                                                title: 'Songs by Genre',
                                                is3D: true,
                                            };

                                            var chart_songs = new google.visualization.PieChart(document.getElementById('chart_songs'));

                                            chart_songs.draw(data_songs, options_songs);

                                            // Series Pie Chart
                                            var data_series = google.visualization.arrayToDataTable([
                                                <?php echo $chart_data_series; ?>
                                            ]);

                                            var options_series = {
                                                title: 'Series by Genre',
                                                is3D: true,
                                            };

                                            var chart_series = new google.visualization.PieChart(document.getElementById('chart_series'));

                                            chart_series.draw(data_series, options_series);
                                        }
                                    </script>
                                </head>
                                <body>
                                    <div class="chart-container" id="chart_movies"></div>
                                    <div class="chart-container" id="chart_songs"></div>
                                    <div class="chart-container" id="chart_series"></div>
                                </body>
                                </html>



                    
                    <div class="col-12">
                        <div class="section-title">
                            <h4>Summary</h4>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-12">
                        <div class="block table-block mb-4">
                            <div class="block-heading d-flex align-items-center" style="border:0; padding-bottom: 0;">
                                <h5 class="text-truncate">Movies</h5>
                                <div class="graph-pills graph-home">
                                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active active-2" href="<?php echo _SITE_URL ?>/admin/controller/movies.php">View All <i class="fa fa-angle-right" style="margin-left: 5px"></i></a>

                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="custom-scroll" style="max-height: 250px;">
                                <div class="table-responsive text-no-wrap">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Genre</th>
                                                <th>Year</th>
                                                <th>Duration</th>
                                                <th>Featured</th>
                                                <th>Status</th>
                                                <th>Actions</th>

                                            </tr>
                                        </thead>

                                        <tbody class="text-middle">
                                            <?php foreach($movies as $movie): ?>

                                                <tr>
                                                    <td class="product">
                                                        <img class="product-img" style="width: 45px; height: 55px" src="../../images/<?php echo $movie['movie_image']; ?>">
                                                    </td>
                                                    <td class="name" style="text-transform: none;"><span class="span-title"><?php echo $movie['movie_title']; ?></span></td>
                                                    <td class="name"><?php echo $movie['genre_title']; ?></td>
                                                    <td class="name"><?php echo $movie['movie_year']; ?></td>
                                                    <td class="name"><?php echo $movie['movie_duration']; ?></td>
                                                    <td class="status">
                                                        <?php
                                                        if ($movie['movie_featured'] == 1) {
                                                            echo "<span class='badge badge-pill bg-success'>Yes</span>";
                                                        }else{
                                                            echo "<span class='badge badge-pill bg-warning'>No</span>";
                                                        }
                                                        ?>
                                                    </td>
                                                    <td class="status">
                                                        <?php
                                                        if ($movie['movie_status'] == 1) {
                                                            echo "<span class='badge badge-pill bg-success'>Publish</span>";
                                                        }else{
                                                            echo "<span class='badge badge-pill bg-warning'>Draft</span>";
                                                        }
                                                        ?>

                                                    </td>

                                                    <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_movie.php?id=<?php echo $movie['movie_id']; ?>"><i class="fa fa-cog a-i-color"></i></a> <a onclick="alertdelete_<?php echo $movie['movie_id']; ?>();" style="cursor: pointer;"><i class="fa fa-trash-o a-i-color"></i></a></td>
                                                </tr>

                                                <script type="text/javascript">
                                                  function alertdelete_<?php echo $movie['movie_id']; ?>() {
                                                      swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_movie.php?id=<?php echo $movie['movie_id']; ?>" });}
                                                  </script>
                                                  
                                              <?php endforeach; ?>

                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                      </div>  

                    <!-- Summary for Songs -->
                    <div class="col-12 col-md-12 col-lg-12">
                        <div class="block table-block mb-4">
                            <div class="block-heading d-flex align-items-center" style="border:0; padding-bottom: 0;">
                                <h5 class="text-truncate">Songs</h5>
                                <div class="graph-pills graph-home">
                                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active active-2" href="<?php echo _SITE_URL ?>/admin/controller/songs.php">View All <i class="fa fa-angle-right" style="margin-left: 5px"></i></a>

                                        </li>
                                    </ul>
                                </div>
                            </div>                                 
                      
                            <div class="custom-scroll" style="max-height: 250px;">
                                <div class="table-responsive text-no-wrap">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Genre</th>
                                                <th>Year</th>
                                                <th>Featured</th>
                                                <th>Status</th>
                                                <th>Actions</th>

                                            </tr>
                                        </thead>

                                        <tbody class="text-middle">
                                            <?php foreach($songs as $song): ?>

                                                <tr>
                                                    <td class="product">
                                                        <img class="product-img" style="width: 45px; height: 55px" src="../../images/<?php echo $song['song_image']; ?>">
                                                    </td>
                                                    <td class="name" style="text-transform: none;"><span class="span-title"><?php echo $song['song_title']; ?></span></td>
                                                    <td class="name"><?php echo $song['genre_title']; ?></td>
                                                    <td class="name"><?php echo $song['song_year']; ?></td>
                                                    
                                                    <td class="status">
                                                        <?php
                                                        if ($song['song_featured'] == 1) {
                                                            echo "<span class='badge badge-pill bg-success'>Yes</span>";
                                                        }else{
                                                            echo "<span class='badge badge-pill bg-warning'>No</span>";
                                                        }
                                                        ?>
                                                    </td>
                                                    <td class="status">
                                                        <?php
                                                        if ($song['song_status'] == 1) {
                                                            echo "<span class='badge badge-pill bg-success'>Publish</span>";
                                                        }else{
                                                            echo "<span class='badge badge-pill bg-warning'>Draft</span>";
                                                        }
                                                        ?>

                                                    </td>

                                                    <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_song.php?id=<?php echo $song['song_id']; ?>"><i class="fa fa-cog a-i-color"></i></a> <a onclick="alertdelete_<?php echo $song['song_id']; ?>();" style="cursor: pointer;"><i class="fa fa-trash-o a-i-color"></i></a></td>
                                                </tr>

                                                <script type="text/javascript">
                                                  function alertdelete_<?php echo $song['song_id']; ?>() {
                                                      swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_song.php?id=<?php echo $song['song_id']; ?>" });}
                                                  </script>

                                                <?php endforeach; ?>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Summary for Genres -->
                        <div class="col-12 col-md-12 col-lg-12">
                            <div class="block table-block mb4">
                                <div class="block-heading d-flex align-items-center" style="border:0; padding-bottom: 0;">
                                    <h5 class="text-truncate">Genres</h5>
                                    <div class="graph-pills graph-home">
                                        <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active active-2" href="<?php echo _SITE_URL ?>/admin/controller/genres.php">View All <i class="fa fa-angle-right" style="margin-left: 5px"></i></a>

                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="custom-scroll" style="max-height: 250px;">
                                    <div class="table-responsive text-no-wrap">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Image</th>
                                                    <th>Title</th>
                                                    <th>Actions</th>

                                                </tr>
                                            </thead>

                                            <tbody class="text-middle">
                                                <?php foreach($genres as $genre): ?>

                                                    <tr>
                                                        <td class="product">
                                                            <img class="product-img" style="width: 45px; height: 55px" src="../../images/<?php echo $genre['genre_image']; ?>">
                                                        </td>
                                                        <td class="name" style="text-transform: none;"><span class="span-title"><?php echo $genre['genre_title']; ?></span></td>

                                                        <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_genre.php?id=<?php echo $genre['genre_id']; ?>"><i class="fa fa-cog a-i-color"></i></a> <a onclick="alertdelete_<?php echo $genre['genre_id']; ?>();" style="cursor: pointer;"><i class="fa fa-trash-o a-i-color"></i></a></td>
                                                    </tr>

                                                    <script type="text/javascript">
                                                      function alertdelete_<?php echo $genre['genre_id']; ?>() {
                                                          swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_genre.php?id=<?php echo $genre['genre_id']; ?>" });}
                                                        </script>

                                                    <?php endforeach; ?>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                                        
                                




                      <div class="col-12 col-md-12 col-lg-12">
                        <div class="block table-block mb-4">
                            <div class="block-heading d-flex align-items-center" style="border:0; padding-bottom: 0;">
                                <h5 class="text-truncate">Series</h5>
                                <div class="graph-pills graph-home">
                                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active active-2" href="<?php echo _SITE_URL ?>/admin/controller/series.php">View All <i class="fa fa-angle-right" style="margin-left: 5px"></i></a>

                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="custom-scroll" style="max-height: 250px;">
                                <div class="table-responsive text-no-wrap">
                                    <table class="table table-striped">
                                        <thead>
                                         <tr>
                                            <th>Image</th>
                                            <th>Title</th>
                                            <th>Genre</th>
                                            <th>Year</th>
                                            <th>Featured</th>
                                            <th>Status</th>
                                            <th>Actions</th>

                                        </tr>
                                    </thead>

                                    <tbody class="text-middle">
                                        <?php foreach($series as $serie): ?>

                                            <tr>
                                                <td class="product">
                                                    <img class="product-img" style="width: 45px; height: 55px" src="../../images/<?php echo $serie['serie_image']; ?>">
                                                </td>
                                                <td class="name" style="text-transform: none;"><span class="span-title"><?php echo $serie['serie_title']; ?></span></td>
                                                <td class="name"><?php echo $serie['genre_title']; ?></td>
                                                <td class="name"><?php echo $serie['serie_year']; ?></td>
                                                <td class="status">
                                                    <?php
                                                    if ($serie['serie_featured'] == 1) {
                                                        echo "<span class='badge badge-pill bg-success'>Yes</span>";
                                                    }else{
                                                        echo "<span class='badge badge-pill bg-warning'>No</span>";
                                                    }
                                                    ?>
                                                </td>
                                                <td class="status">
                                                    <?php
                                                    if ($serie['serie_status'] == 1) {
                                                        echo "<span class='badge badge-pill bg-success'>Publish</span>";
                                                    }else{
                                                        echo "<span class='badge badge-pill bg-warning'>Draft</span>";
                                                    }
                                                    ?>

                                                </td>

                                                <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_serie.php?id=<?php echo $serie['serie_id']; ?>"><i class="fa fa-cog a-i-color"></i></a> <a onclick="alertdelete_<?php echo $serie['serie_id']; ?>();" style="cursor: pointer;"><i class="fa fa-trash-o a-i-color"></i></a></td>
                                            </tr>

                                            <script type="text/javascript">
                                              function alertdelete_<?php echo $serie['serie_id']; ?>() {
                                                  swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_serie.php?id=<?php echo $serie['serie_id']; ?>" });}
                                              </script>
                                              
                                          <?php endforeach; ?>
                                          
                                      </tbody>
                                  </table>
                              </div>
                          </div>
                      </div>
                  </div>  


                  <div class="col-12 col-md-12 col-lg-12">
                    <div class="block table-block mb-4">
                        <div class="block-heading d-flex align-items-center" style="border:0; padding-bottom: 0;">
                            <h5 class="text-truncate">Episodes</h5>
                            <div class="graph-pills graph-home">
                                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active active-2" href="<?php echo _SITE_URL ?>/admin/controller/episodes.php">View All <i class="fa fa-angle-right" style="margin-left: 5px"></i></a>

                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="custom-scroll" style="max-height: 250px;">
                            <div class="table-responsive text-no-wrap">
                                <table class="table table-striped">
                                 <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Serie</th>
                                        <th>Status</th>
                                        <th>Actions</th>

                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Title</th>
                                        <th>Serie</th>
                                        <th>Status</th>
                                        <th>Actions</th>

                                    </tr>
                                </tfoot>

                                <tbody>
                                    <?php foreach($episodes as $episode): ?>

                                        <tr>
                                            <td class="name" style="text-transform: none;"><span class="span-title"><?php echo $episode['episode_title']; ?></span></td>
                                            <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_serie.php?id=<?php echo $episode['episode_serie']; ?>"><?php echo $episode['serie_title']; ?></a></td>

                                            <td class="status">
                                                <?php
                                                if ($episode['episode_status'] == 1) {
                                                    echo "<span class='badge badge-pill bg-success'>Publish</span>";
                                                }else{
                                                    echo "<span class='badge badge-pill bg-warning'>Draft</span>";
                                                }
                                                ?>

                                            </td>

                                            <td class="name"><a href="<?php echo _SITE_URL ?>/admin/controller/edit_episode.php?id=<?php echo $episode['episode_id']; ?>"><i class="fa fa-cog a-i-color"></i></a> <a onclick="alertdelete_<?php echo $episode['episode_id']; ?>();" style="cursor: pointer;"><i class="fa fa-trash-o a-i-color"></i></a></td>
                                        </tr>

                                        <script type="text/javascript">
                                          function alertdelete_<?php echo $episode['episode_id']; ?>() {
                                              swal({ title: "Are you sure?", text: "You will not be able to recover this item!", type: "warning",cancelButtonClass: "btn-default btn-sm", showCancelButton: true, confirmButtonClass: "btn-danger btn-sm", confirmButtonText: "Yes, delete it!", closeOnConfirm: false }, function(){window.location.href = "<?php echo _SITE_URL ?>/admin/controller/delete_episode.php?id=<?php echo $episode['episode_id']; ?>" });}
                                          </script>
                                          
                                      <?php endforeach; ?>

                                  </tbody>
                              </table>
                          </div>
                      </div>
                  </div>
              </div>  
          </div>
      </div>
      
  </div>
</div>
</div>

</section>