<section class="main-content has-banner">
        
    <!-- .main-banner starts -->
    <div class="main-banner">

        <!-- .main-banner__content starts -->
        <div class="main-banner__content">

            <!-- .main-banner__inner starts -->
            <div class="main-banner__inner">

                <h1 class="main-banner__title">
                    <span>Purveyor of fine digital goods.</span>
                </h1>

            </div>
            <!-- .main-banner__inner ends -->

        </div>
        <!-- .main-banner__inner ends -->

    </div>
    <!-- .main-banner ends -->
        
    <!-- .container starts -->
    <div class="container">

        <div class="row">

            <!-- work column starts -->
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">

                <header class="section-header">

                    <h2 class="section-header__title">Work</h2>

                    <hr class="section-hor-divider">

                </header>

                <div class="col-content">
                
                    <% if ListPagesByType('ProjectPage', 5) %>
                    
                        <% loop ListPagesByType('ProjectPage') %>
                            
                            <% include Project %>
                            
                        <% end_loop %>
                        
                    <% else %>
                    
                        <h3 class="message">Sorry, there is no work to view at the moment.</h3>
                        
                    <% end_if %>

                </div>

                <div class="clearfix"></div>

            </div>
            <!-- work column ends -->

            <!-- projects column starts -->
            <div class="col-border-right col-lg-4 col-md-4 col-sm-6 col-xs-12">

                <header class="section-header">

                    <h2 class="section-header__title">Projects</h2>

                    <hr class="section-hor-divider">

                </header>

                <div class="col-content">
                
                    <% if ListPagesByType('ExperimentPage', 5) %>
                    
                        <% loop ListPagesByType('ExperimentPage') %>
                            
                            <% include Experiment %>
                            
                        <% end_loop %>
                        
                    <% else %>
                    
                        <h3 class="message">Sorry, there are no projects to view at the moment.</h3>
                    
                    <% end_if %>

                </div>

                <div class="clearfix"></div>

            </div>
            <!-- articles and news column ends -->

            <!-- articles and news column starts -->
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">

                <header class="section-header">

                    <h2 class="section-header__title">Blog</h2>

                    <hr class="section-hor-divider">

                </header>

                <div class="col-content">
                
                    <% if ListPagesByType('BlogPost', 5) %>
                    
                        <% loop ListPagesByType('BlogPost') %>
                            
                            <% include PostSummary %>
                            
                        <% end_loop %>
                        
                    <% else %>
                    
                        <h3 class="message">Sorry, there are no posts to view at the moment.</h3>
                    
                    <% end_if %>

                </div>

                <div class="clearfix"></div>

            </div>
            <!-- articles and news column ends -->

        </div>

    </div>
    <!-- .container ends -->
            
</section>