{{ define "custom/templates/content.tpl" }}
{{template "custom/parts/banner.tpl" . }}
<main class="container">
  {{template "custom/parts/detach.tpl" . }}
  {{template "custom/parts/newsletter.tpl" . }}
  {{template "custom/parts/news.tpl" . }}
  {{template "custom/parts/footer.tpl" . }}
</main>
{{ end }}
