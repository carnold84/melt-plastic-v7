    <div class="item with-bg">

        <a href="<% if $ExternalUrl %>$ExternalUrl<% else %>$Link<% end_if %>" title="$Title">
            
            <div class="item__image">
                $Thumb.ResponsiveSet1
            </div>

            <div class="item__content">

                <h2 class="item__title">$Title</h2>

                <p class="item__metadata">

                    <% if $Tags %>

                        <% loop $Tags %>

                            $Title<% if $Pos != $TotalItems %>,<% end_if %>

                        <% end_loop %>

                    <% else %>

                        No tags

                    <% end_if %>

                </p>

            </div>
            
        </a>

    </div>