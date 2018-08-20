
<p class="menu__title">Categorias</p>
<ul class=menu>
    <?php
        for ($i=0; $i < 4; $i++) { 
            echo '<li class="menu__item"><a class="menu__link" href="#">categoria '. $i . '</a></li>';
        }
    ?>
    <li class="">
        <a class="menu__link" href="#">
            <p>
                <label for="amount">Rango de precio:</label>
                <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold; width:123px;">
            </p>
            <div id="slider-range" ></div> 
        </a>
    </li>
</ul>
