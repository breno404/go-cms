{{ define "custom/parts/header.tpl" }}
<header
  class="w-full flex justify-between items-center border-b"
  style="width: 100%; padding: 0 2rem"
>
  <img src="/static/img/logo.png" alt="logo" width="100" height="100" />
  <nav>
    <ul class="flex" style="list-style: none; gap: 1rem">
      <li><a href="/" style="padding: 0 0.5rem">Home</a></li>
      <li><a href="/login" style="padding: 0 0.5rem">Login</a></li>
    </ul>
  </nav>
</header>
{{ end }}
