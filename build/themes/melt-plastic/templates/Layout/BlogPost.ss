<section class="main-content">
        
    <!-- .container starts -->
    <div class="container">

        <header class="section-header">

            <h2 class="section-header__title">$Title</h2>

            <hr class="section-hor-divider">

        </header>
        
        <article>
        
            <% if $FeaturedImage %>
                <p class="post-image">$FeaturedImage.setWidth(795)</p>
            <% end_if %>

            <div class="content">$Content</div>

            <% include EntryMeta %>
            
        </article>

        $Form
        $CommentsForm

    </div>
    <!-- .container ends -->
    
</section>