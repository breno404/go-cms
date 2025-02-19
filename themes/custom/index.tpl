{{ define "custom/index.tpl" }}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="/static/css/styles.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />

    <title>{{ .page.title }}</title>
  </head>
  <body>
    <div class="w-full min-h-screen flex items-center flex-col">
      {{if ne .page.route "login"}}
      {{template "custom/parts/header.tpl" . }}
      {{ end }}

      {{if eq .page.route "404"}}
      {{template "custom/templates/404.tpl" . }}

      {{else if eq .page.route "login"}}
      {{template "custom/templates/login.tpl" . }}

      {{ else }}
      {{template "custom/templates/content.tpl" . }}
      {{ end }}

      {{if ne .page.route "login"}}
      {{template "custom/parts/footer.tpl" . }}
      {{ end }}
    </div>
  </body>
</html>
{{ end }}
