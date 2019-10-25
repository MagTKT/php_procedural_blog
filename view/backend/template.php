<!DOCTYPE html>
<html >
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>Billet simple pour l'Alaska</title>
      <script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=lnp7uirbee1mvl9prt3p9romc1p2gywt7g61ozgx1w8miw79"></script>
      <script>tinymce.init({ selector:'textarea#postContent' });</script>
      <link href="public/css/bootstrap.min.css" rel="stylesheet">
      <link href="public/css/agency.css" rel="stylesheet">
    </head>

    <body>
      <?php
        include("include/nav.php"); ?>
       <!--Fin header-->
       <div class="container">
          <div class="row">
            <!-- Blog Entries Column -->
            <div class="col-12">
              <?= $content ?> 
            </div>
              <div class="card my-3" id="quickNav">
                <h5 class="card-header index">Index</h5>
                <div class="card-body">
                  <div class="input-group">
                    <ul>
                      <li><a href="index.php?action=managePosts">Géré les articles</a></li>
                      <li><a href="index.php?action=manageComments">Géré les commentaires</a></li>
                      <li><a href="index.php?action=manageCategories">Géré les categories</a></li>
                    </ul>
                  </div>
                  <p><a href="<?php echo $_SERVER["HTTP_REFERER"] ?>">Page Précédente</a></p>
                </div>
              </div>
            </div>
          </div>
    <script src="public/js/jquery.min.js"></script>
    <script src="public/js/bootstrap.bundle.min.js"></script>
    <script src="public/js/agency.min.js"></script>
    
    </body>
</html>