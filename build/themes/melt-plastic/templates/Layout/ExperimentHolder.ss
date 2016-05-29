<section class="main-content">

    <header class="section-header">

        <h2 class="section-header__title">$Title</h2>
        
        <% if $Content %>

            <div class="section-header__subtitle">$Content</div>

        <% end_if %>

    </header>

    <% include BreadCrumbs %>

    <% loop $Items %>

        <% include Experiment %>

    <% end_loop %>

    <% include ItemPagination %>
    
</section>