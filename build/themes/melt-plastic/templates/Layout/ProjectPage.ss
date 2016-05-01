<section class="main-content">
        
    <!-- .container starts -->
    <div class="container">

        <header class="section-header">

            <h2 class="section-header__title">Work.</h2>

            <hr class="section-hor-divider">

        </header>
        
        <div class="row">

            <div class="col-md-12 col-xs-12">

                <div class="col-content">

                    <h1 class="page-title">$Title</h1>

                    <div class="project-description">
                        $Description
                    </div>

                </div>

                <div class="clearfix"></div>

            </div>

        </div>
        
        <% if $Images %>
                        
            <% loop $Images.Sort('SortOrder') %>
        
                <div class="row">

                    <div class="col-md-9 col-xs-12">

                        <div class="col-content">

                            $ResponsiveSet1
                            
                        </div>

                        <div class="clearfix"></div>

                    </div>

                </div>
        
            <% end_loop %>

        <% end_if %>

    </div>
    <!-- .container ends -->
    
</section>