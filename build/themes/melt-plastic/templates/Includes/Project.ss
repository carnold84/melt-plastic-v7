    <div class="item with-bg">

        <a class="item__link" href="$Link" title="$Title">
        
            <div class="item__image">
                $Thumb.SetWidth(500);
            </div>

            <div class="item__content">

                <h2 class="item__title">$Title</h2>

                <p class="item__metadata">

                    <% if $Tags %>

                        <% loop $Tags %>

                            $Title<% if not Last %>,<% end_if %>

                        <% end_loop %>

                    <% else %>

                        No tags

                    <% end_if %>

                </p>

            </div>
        </a>

    </div>