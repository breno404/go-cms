{{ define "custom/index.tpl" }}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="/static/css/tailwind.css" rel="stylesheet" />
    <link href="/static/css/style.css" rel="stylesheet" />
    <title>{{ .title }}</title>
  </head>
  <body>
    <div class="w-full min-h-screen flex items-center flex-col">
      {{if ne .route "login"}}
      {{template "custom/parts/header.tpl" . }}
      {{ end }}
      {{if eq .route "404"}}
      {{template "custom/templates/404.tpl" . }}
      {{ else }}
      <main class="container">
        <h1>{{ index .items "detach-title" | or "" }}</h1>
        <article>{{ index .items "detach-content" | or ""}}</article>
      </main>
      {{ end }}
      {{if ne .route "login"}}
      {{template "custom/parts/footer.tpl" . }}
      {{ end }}
    </div>
  </body>
</html>
{{ end }}
