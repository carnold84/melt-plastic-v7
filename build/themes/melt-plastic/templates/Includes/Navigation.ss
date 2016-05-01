<nav class="main-nav">

    <button id="responsive-menu-btn" class="main-nav__button" type="button">Menu</button>

    <div id="responsive-menu-content" class="main-nav__links">

        <!-- mobile menu -->
        <button id="responsive-menu-close-btn" class="main-nav__button-close" type="button">
            $SVG('close-icon')
        </button>

        <ul class="main-nav__links-list">
            <% loop $Menu(1) %>
                <li class="main-nav__item $LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
            <% end_loop %>
            
            <li class="main-nav__item">
                <a class="github btn btn-primary" href="https://github.com/carnold84">$SVG('github') Github</a>
            </li>

            <li class="main-nav__item">
                <a class="twitter btn btn-primary" href="https://twitter.com/meltplastic">$SVG('twitter') Twitter</a>
            </li>
        </ul>

    </div>

</nav>