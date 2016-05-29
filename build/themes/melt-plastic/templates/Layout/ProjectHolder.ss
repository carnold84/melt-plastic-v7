<section class="main-content">

    <header class="section-header">

        <h2 class="section-header__title">$Title</h2>

        <% if $Content %>

            <h3 class="section-header__subtitle">$Content</h3>

        <% end_if %>

    </header>

    <% include BreadCrumbs %>

    <% loop $Items %>

        <% include Project %>

    <% end_loop %>

    <% include ItemPagination %>
    
</section>