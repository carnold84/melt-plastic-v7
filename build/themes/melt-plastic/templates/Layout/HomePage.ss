<section class="main-content">

    <header class="section-header is-dark">

        <h2 class="section-header__title">Latest</h2>

    </header>

    <% if ListPagesByType('BlogPost') %>

        <% loop ListPagesByType('BlogPost') %>

            <% include PostSummary %>

        <% end_loop %>

    <% end_if %>
                
    <% if ListDataByType('Project') %>

        <% loop ListDataByType('Project') %>

            <% include Project %>

        <% end_loop %>

    <% end_if %>

    <% if ListDataByType('Experiment') %>

        <% loop ListDataByType('Experiment') %>

            <% include Experiment %>

        <% end_loop %>

    <% end_if %>

    <div class="clearfix"></div>
            
</section>