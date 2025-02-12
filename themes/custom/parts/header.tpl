{{ define "custom/parts/header.tpl" }}
<header
  id="custom-header"
  class="sticky top-0 w-full flex justify-between items-center shadow-md h-24 bg-white transition-all duration-300 z-[999]"
  style="width: 100%; padding: 0 2rem"
>
  <img src="/static/img/logo.png" alt="logo" class="w-24 h-24" />
  {{template "custom/parts/search.tpl" .}}
  <nav>
    <ul class="flex" class="list-none gap-4">
      <li class="border-b border-transparent hover:border-black">
        <a href="/" class="px-2">Home</a>
      </li>
      <li class="border-b border-transparent hover:border-black">
        <a href="/login" class="px-2">Login</a>
      </li>
    </ul>
  </nav>
</header>
<script>
  window.addEventListener("scroll", function () {
    const header = document.getElementById("custom-header");
    const search = document.getElementById("custom-search");
    if (window.scrollY > 96) {
      header.classList.remove("bg-white");
      header.classList.add("bg-white/25", "backdrop-blur-md");

      search.classList.remove("text-black");
      search.classList.add("text-white");

      search.children[0].classList.remove("bg-slate-200", "hover:bg-slate-300");
      search.children[0].classList.add(
        "bg-slate-200/25",
        "hover:bg-slate-300/25"
      );
    } else {
      header.classList.remove("bg-white/25", "backdrop-blur-md");
      header.classList.add("bg-white");

      search.classList.remove("text-white");
      search.classList.add("text-black");

      search.children[0].classList.remove(
        "bg-slate-200/25",
        "hover:bg-slate-300/25"
      );
      search.children[0].classList.add("bg-slate-200", "hover:bg-slate-300");
    }
  });
</script>
{{ end }}
