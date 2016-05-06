<!-- .main-header starts -->
<header class="main-header">

    <div class="main-header__title">
        <a class="main-header__logo" href="$BaseHref" title="$SiteConfig.Title">$SVG('logo')</a>
    </div>

    <% include Navigation %>

    <% if $SearchForm %>
        <span class="search-dropdown-icon">L</span>
        <div class="search-bar">
            $SearchForm
        </div>
    <% end_if %>

</header>
<!-- .main-header ends -->