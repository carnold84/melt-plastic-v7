<section class="main-content">
        
    <!-- .container starts -->
    <div class="container">

        <header class="section-header">

            <h2 class="section-header__title">$Title</h2>

            <hr class="section-hor-divider">

        </header>
        
        
        <% loop $Children %>
        
            <% if $GetModulus($Pos, 3) == 0 %>
            
                <div class="row">
                
            <% end_if %>
        
                    <div class="col-md-4 col-xs-12">

                        <% include Project %>

                    </div>
            
            <% if $GetModulus($Pos, 3) == 2 %>
                
                </div>
                
            <% end_if %>
                
        <% end_loop %>

    </div>
    <!-- .container ends -->
    
</section>