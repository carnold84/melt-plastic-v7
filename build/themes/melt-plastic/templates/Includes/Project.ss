    <div class="item with-bg">

        <a href="$Link">
            <img class="item__image" src="$Thumb.URL" alt="$Title" />

            <div class="item__content">

                <h2 class="item__title">$Title</h2>

                <p class="item__metadata">

                    Tags:

                    <% if $Tags %>

                        <% loop $Tags %>

                            $Title

                        <% end_loop %>

                    <% else %>

                        No tags

                    <% end_if %>

                </p>

            </div>
        </a>

    </div>