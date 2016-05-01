<article class="item article">

    <h2 class="item__title">
        <a href="$Link">
            <% if $MenuTitle %>$MenuTitle
            <% else %>$Title<% end_if %>
        </a>
    </h2>
        
    <% if $Summary %>
        <p>$Summary
    <% else %>
        <p>$Excerpt
    <% end_if %>

    <% include EntryMeta %>

</article>
