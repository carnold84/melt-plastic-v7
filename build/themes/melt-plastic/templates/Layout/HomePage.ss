<section class="main-content">

    <header class="section-header is-dark">

        <h2 class="section-header__title">Latest</h2>

    </header>

    <% if ListPagesByType('BlogPost', 5) %>

        <% loop ListPagesByType('BlogPost') %>

            <% include PostSummary %>

        <% end_loop %>

    <% end_if %>
                
    <% if ListPagesByType('ProjectPage', 5) %>

        <% loop ListPagesByType('ProjectPage') %>

            <% include Project %>

        <% end_loop %>

    <% end_if %>

    <% if ListPagesByType('ExperimentPage', 5) %>

        <% loop ListPagesByType('ExperimentPage') %>

            <% include Experiment %>

        <% end_loop %>

    <% end_if %>

    <div class="clearfix"></div>
            
</section>