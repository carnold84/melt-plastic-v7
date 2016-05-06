    <div class="no-js-message">

        <p class="no-js-message__text">Javascript is required</p>

    </div>

    <div id="content">

        <iframe src="$Url"></iframe>

    </div>
    
    <footer class="experiment-footer">

        <p class="experiment-footer__title">Title / <span class="experiment-footer__title--highlight">$Title</span></p>
        
        <% if $DownloadUrl %>
        
        <p class="experiment-footer__links">Download / <a class="experiment-footer__links--link" href="$DownloadUrl">GitHub</a></p>
        
        <% end_if %>

        <p class="experiment-footer__version">Version / <span class="experiment-footer__title--highlight"><% if $Ver %>$Ver<% else %>1.0<% end_if %></span></p>

    </footer>