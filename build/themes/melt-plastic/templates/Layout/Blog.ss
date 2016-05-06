<section class="main-content">

    <header class="section-header">

        <h2 class="section-header__title">
            
            <span class="section-header__breadcrumb">

            <% if $ArchiveYear %>

                <span class="bottom-level">$Title</span>

                <span class="divider"> / </span>

                <span class="middle-level">Archive</span>

                <span class="divider"> / </span>

                <span class="top-level">

                    <% if $ArchiveDay %>

                        $ArchiveDate.Nice

                    <% else_if $ArchiveMonth %>

                        $ArchiveDate.format('F, Y')

                    <% else %>

                        $ArchiveDate.format('Y')

                    <% end_if %>

                </span>

            <% else_if $CurrentTag %>

                <span class="bottom-level">$Title</span>

                <span class="divider"> / </span>
                    
                <span class="middle-level">Tag</span>

                <span class="divider"> / </span>

                <span class="top-level">$CurrentTag.Title</span>

            <% else_if $CurrentCategory %>

                <span class="bottom-level">$Title</span>

                <span class="divider"> / </span>
                    
                <span class="middle-level">Category</span>

                <span class="divider"> / </span>

                <span class="top-level">$CurrentCategory.Title</span>

            <% else %>

                $Title

            <% end_if %>
                
            </span>

        </h2>
        
        <% if $Content %>

            <h3 class="section-header__subtitle">$Content</h3>

        <% end_if %>

    </header>

    <% if $PaginatedList.Exists %>
    
        <% loop $PaginatedList %>

            <% include PostSummary %>
                        
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
    
</section>
