<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
    <link rel="stylesheet" href="src/css/style.css">
    <title>SISPOSW - Tienda Online</title>
</head>
<body>
    <!-- ======= BANNER ======= -->
    <aside class="container-fluid banner row d-flex">
        <!-- <img class="img-fluid" src="src/assets/banner11.jpg" alt=""> -->
        <h1 class="h1 text-center col-md-12">
        <?php
        if (isset($_GET["msg"])) {
            echo $_GET["msg"];
        }else{
            echo "BANNER";
        }
        ?>
        </h1>
    </aside>
    <br>
    
    <!-- ======= HEADER SEARCH BAR ======= -->
    <header class="container-fluid row n">
        <?php include "src/modules/header.php" ?>
    </header>
    
    <div class="container-fluid row">
        <!-- ======= MAIN MENU ======= -->
        <nav class="col-md-2 d">
            <?php include "src/modules/categories.php"; ?>
        </nav>
        <!-- ======= MAIN CONTNTENT ======= -->
        <main class="col-md-10">
            <?php include "src/modules/products.php" ?>
        </main>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="src/js/function.js"></script>

</body>
</html>