<section class="main-content">

    <header class="section-header">

        <h2 class="section-header__title">$Title</h2>
        
        <% if $Summary %>
        
        <h3 class="section-header__subtitle">$Summary</h3>
        
        <% end_if %>

    </header>

    <% if $FeaturedImage %>
        <p class="post-image">$FeaturedImage.ResponsiveSet1</p>
    <% end_if %>

    <article class="blog-post__content">

        <div class="blog-post__body">$Content</div>

    </article>

    <div class="blog-post__content">

        <div class="blog-post__metadata">

            <% include EntryMeta %>

        </div>
    
    </div>

    $Form
    $CommentsForm
    
</section>