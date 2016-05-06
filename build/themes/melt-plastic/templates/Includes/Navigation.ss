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
            
        </ul>

        <ul class="main-nav__social-links">
            
            <li class="main-nav__social-links__item icon github">
                <a href="https://github.com/carnold84" title="Github">$SVG('github')</a>
            </li>

            <li class="main-nav__social-links__item icon twitter">
                <a href="https://twitter.com/meltplastic" title="Twitter">$SVG('twitter')</a>
            </li>

            <li class="main-nav__social-links__item icon tumblr">
                <a href="http://melt-plastic.tumblr.com" title="Tumblr">$SVG('tumblr')</a>
            </li>
            
        </ul>

    </div>

</nav>