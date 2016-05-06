<section class="main-content">
        
    <!-- .container starts -->
    <div class="container">

        <header class="section-header">

            <h2 class="section-header__title">$Title</h2>

            <div class="section-header__subtitle">
                $Description
            </div>

        </header>
        
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