<div class="item article">

    <a class="item__link" href="$Link">
    
        <div class="item__overlay">
            <h4 class="item__overlay-inner">Read More</h4>
        </div>

        <h2 class="item__title">
            <% if $MenuTitle %>
                $MenuTitle
            <% else %>
                $Title
            <% end_if %>
        </h2>

        <h3 class="item__subtitle">
            <span class="prefix">Posted /</span> $PublishDate.ago
        </h3>
        
        <h3 class="item__subtitle">
            <% if $Categories.exists %>
                <span class="prefix">Categories /</span>
                <% loop $Categories %>
                    $Title<% if not Last %>, <% end_if %>
                <% end_loop %>
            <% end_if %>
        </h3>
    
    </a>

</div>
