<section class="main-content">
        
    <!-- .container starts -->
    <div class="container">

        <header class="section-header">

            <h2 class="section-header__title">
                    
                <% if $ArchiveYear %>
                
                    $Title > <%t Blog.Archive 'Archive' %>:
                    
                    <% if $ArchiveDay %>
                    
                        $ArchiveDate.Nice
                        
                    <% else_if $ArchiveMonth %>
                    
                        $ArchiveDate.format('F, Y')
                        
                    <% else %>
                    
                        $ArchiveDate.format('Y')
                        
                    <% end_if %>
                    
                <% else_if $CurrentTag %>
                
                    $Title > <%t Blog.Tag 'Tag' %> > $CurrentTag.Title
                    
                <% else_if $CurrentCategory %>
                
                    $Title > <%t Blog.Category 'Category' %> > $CurrentCategory.Title
                    
                <% else %>
                
                    $Title
                    
                <% end_if %>
                
            </h2>

            <hr class="section-hor-divider" />

        </header>

        <div class="row">

            <div class="col-md-12 col-xs-12">

                <div class="col-content">

                    $Content

                </div>

                <div class="clearfix"></div>

            </div>

        </div>

        <% if $PaginatedList.Exists %>
            <% loop $PaginatedList %>

                <% if $GetModulus($Pos, 3) == 0 %>

                    <div class="row">

                <% end_if %>

                        <div class="col-md-4 col-xs-12">

                            <% include PostSummary %>

                        </div>

                <% if $GetModulus($Pos, 3) == 2 %>

                    </div>

                <% end_if %>

            <% end_loop %>
            
        <% else %>
        
            <h3 class="message">Sorry, there are no posts to view at the moment.</h3>
            
        <% end_if %>

        $Form
        $CommentsForm

        <% with $PaginatedList %>
            <% include Pagination %>
        <% end_with %>

<% include BlogSideBar %>

    </div>
    <!-- .container ends -->
    
</section>
