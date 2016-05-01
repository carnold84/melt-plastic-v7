<!-- .main-header starts -->
<header class="main-header">

    <!-- .container starts -->
    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <h1 class="main-header__title">
                    <a class="main-header__logo" href="$BaseHref" title="$SiteConfig.Title">$SVG('logo')</a>
                </h1>
                
                <% include Navigation %>
                
                <% if $SearchForm %>
                    <span class="search-dropdown-icon">L</span>
                    <div class="search-bar">
                        $SearchForm
                    </div>
                <% end_if %>

            </div>

        </div>

    </div>
    <!-- .container ends -->

</header>
<!-- .main-header ends -->