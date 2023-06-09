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
              <h4>New Song</h4>
            </div>
          </div>

          <div class="col-md-12">
            <div class="block form-block mb-4">

              <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                <div class="form-row">
                  
                  <div class="form-group col-md-12">
                    
                    <label>Title</label>
                    <input class="form-control" value="" name="song_title" type="text" required="">

                    <label>Description</label>

                    <textarea type="text" class="mceNoEditor form-control" rows="10" name="song_description" id="song_description"></textarea>

                  </div>

                  <div class="form-group col-md-6">
                    <label>Year</label>
                    <input class="form-control" value="" name="song_year" type="number" maxlength="4" required="">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Duration</label>
                    <input class="form-control" value="" name="song_duration" type="text" required="">
                  </div>

                  <div class="form-group col-md-12">

                    <label>Genre</label>
                    <select multiple="multiple" data-placeholder="- Select -" class="my-select form-control" name="song_genre[]" required="">
                      <?php foreach($genres as $genre): ?>
                       <option value="<?php echo $genre['genre_id']; ?>"><?php echo $genre['genre_title']; ?></option>
                     <?php endforeach; ?>
                   </select>

                 </div>

                 <div class="form-group col-md-12">

                  <label>Stars <i style="text-transform: initial;color: #c1c1c1;">(Separate With Commas)</i></label>
                  <input class="form-control" data-role="tagsinput" value="" name="song_stars" type="text" required="">

                </div>

               
                <div class="form-group col-md-12">
                  <label>Stream Link</label>
                  <input class="form-control" value="" name="song_link" type="text" required="">
                </div>

                <div class="form-group col-md-12">
                  <label>Iframe Player</label>
                  <textarea type="text" class="mceNoEditor form-control" name="song_iframe"></textarea>
                </div>

                <div class="form-group col-md-4">
                  <label>Status</label>

                  <select class="custom-select form-control" name="song_status" required="">
                   <option value="" selected>- Select -</option>
                   <option value="0">Draft</option>
                   <option value="1">Publish</option>
                 </select>

               </div>

                <div class="form-group col-md-4">
                  <label>Is Downloadable</label>

                  <select class="custom-select form-control" name="song_downloadable" required="">
                   <option value="" selected>- Select -</option>
                   <option value="0">No</option>
                   <option value="1">Yes</option>
                 </select>

               </div>

               <div class="form-group col-md-4">
                <label>Featured</label>


                <select class="custom-select form-control" name="song_featured" required="">
                 <option value="" selected>- Select -</option>
                 <option value="1">Yes</option>
                 <option value="0">No</option>
               </select>

             </div>

             <div class="form-group col-md-12">


               <label>Image</label><br/>

               <div class="new-image" id="image-preview" style="height: 266px">
                <label for="image-upload" id="image-label">Choose File</label>
                <input type="file" name="song_image" id="image-upload" required="" />
              </div>

              <span class="text-danger" style="font-size: 11px; letter-spacing: 0.06em; text-transform: uppercase; font-weight: 500;">Recommended size: <b>350 x 500 Pixels</b> </span>

            </div>


            <div class="form-group col-md-12">
              <hr>
              <button class="btn btn-primary" type="submit" name="save">Save</button>
            </div>


          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</section>