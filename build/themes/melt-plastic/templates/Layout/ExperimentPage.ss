    <div class="no-js-message">

        <p class="no-js-message__text">Javascript is required</p>

    </div>

    <div id="content">

        <iframe src="$Url"></iframe>

    </div>
    
    <footer class="labs-footer">

        <p class="labs-footer__title">Title / <span class="labs-footer__title--highlight">$Title</span></p>
        
        <% if $DownloadUrl %>
        
        <p class="labs-footer__links">Download / <a class="labs-footer__links--link" href="$DownloadUrl">GitHub</a></p>
        
        <% end_if %>

        <p class="labs-footer__version">Version / <span class="labs-footer__title--highlight"><% if $Ver %>$Ver<% else %>1.0<% end_if %></span></p>

    </footer>