<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <% base_tag %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
        <meta name="description" content="$SiteConfig.Tagline">
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <% require themedCSS('app') %>
    
        <!--[if gte IE 9]>
        <script src="{$ThemeDir}/javascript/libs/polyfill.min.js"></script>
        <![endif]-->
        
        <script type="text/javascript" src="{$ThemeDir}/javascript/libs/modernizr-custom.js"></script>
    </head>
    
<body class="experiment">

    $Layout
    
    <script type="text/javascript" src="{$ThemeDir}/javascript/experiment.js"></script>
    
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-19858391-1', 'auto');
        ga('send', 'pageview');
    </script>

</body>
</html>
