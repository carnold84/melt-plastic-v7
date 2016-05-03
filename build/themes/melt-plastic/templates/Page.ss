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
    </head>
    
<body>
    <% include Header %>
        $Layout
    <% include Footer %>

    <link href="http://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="{$ThemeDir}/javascript/libs.min.js"></script>
    <script type="text/javascript" src="{$ThemeDir}/javascript/app.min.js"></script>

</body>
</html>