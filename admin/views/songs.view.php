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
                            <h4>Songs</h4>
                        </div>
                    </div>

                    <div class="col-12" style="text-align: right;padding-right: 20px;">
                        <a class="btn btn-dark" href="<?php echo _SITE_URL ?>/admin/controller/new_song.php">
                            <i class="fa fa-plus add-new-i"></i> Add New
                        </a>
                    </div>

                    <div class="col-12">
                        <div class="block table-block mb-4" style="margin-top: 20px">

                            <div class="row">
                                <div class="table-responsive">
                                    <table id="dataTable1" class="display table table-striped" data-table="data-table">
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
                                        <tfoot>
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
                                        </tfoot>

                                        <tbody>
                                            <?php foreach($songs as $song): ?>

                                                <tr>
                                                    <td width="80px"><img src="../../images/<?php echo $song['song_image']; ?>" style="width: 80px; height: 100px; padding: 2px; border: 1px solid #eee;"></td>
                                                    <td class="name" style="text-transform: none;"><span class="span-title"><?php echo echoOutput($song['song_title']); ?></span></td>
                                                    <td class="name"><?php echo echoOutput($song['genre_title']); ?></td>
                                                    <td class="name"><?php echo echoOutput($song['song_year']); ?></td>
                                                    <td class="name"><?php echo echoOutput($song['song_duration']); ?></td>

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
                  </div>
              </div>
          </div>
      </div>
  </section>
