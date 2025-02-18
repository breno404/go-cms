{{ define "custom/parts/header.tpl" }}
<header
  id="custom-header"
  class="sticky top-0 w-full flex justify-between items-center shadow-md h-24 bg-white transition-all duration-300 z-[999]"
  style="width: 100%; padding: 0 2rem"
>
  <img src="/static/img/logo.png" alt="logo" class="w-24 h-24" />
  <div class="hidden sm:block">
    {{template "custom/parts/search.tpl" .}}
  </div>
  <nav class="hidden sm:block">
    <ul class="flex list-none gap-4">
      <li class="border-b border-transparent hover:border-black mx-2">
        <a href="/" class="px-2">Início</a>
      </li>
      <li
        id="categories-button"
        class="border-b border-transparent hover:border-black mx-2 px-2 cursor-default"
      >
        Categorias

        <div
          id="categories-dropdown"
          class="absolute top-full left-0 shadow-md h-16 bg-black w-full group-focus:block hidden text-white place-content-center text-sm"
        >
          <ul class="flex gap-2 w-full justify-evenly">
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #1</a>
            </li>
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #2</a>
            </li>
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #3</a>
            </li>
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #4</a>
            </li>
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #5</a>
            </li>
            <li class="border-b border-transparent hover:border-white">
              <a href="/" class="px-2">Category #6</a>
            </li>
          </ul>
        </div>
      </li>
      <li class="border-b border-transparent hover:border-black mx-2">
        <a href="/login" class="px-2">Login</a>
      </li>
    </ul>
  </nav>
  <button class="sm:hidden block"></button>
</header>
<script>
  const header = document.getElementById("custom-header");
  const search = document.getElementById("custom-search");
  const categoriesButton = document.getElementById("categories-button");
  const categoriesDropdown = document.getElementById("categories-dropdown");
  window.addEventListener("scroll", function () {
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

  categoriesButton.addEventListener("click", function (event) {
    event.preventDefault();
    event.stopPropagation();

    const dropdownIsHidden = categoriesDropdown.classList.contains("hidden");

    const targetIsDiffFromButton = event.target !== categoriesButton;

    if (dropdownIsHidden) {
      categoriesDropdown.classList.remove("hidden");
    } else if (!targetIsDiffFromButton) categoriesDropdown.classList.add("hidden");
  });

  document.addEventListener("click", function (event) {
    const dropdownIsHidden = categoriesDropdown.classList.contains("hidden");
    const targetIsDiffFromDropdown = event.target !== categoriesDropdown;
    const targetIsNotChildOfDropdown = !categoriesDropdown.contains(
      event.target
    );

    if (
      event.target !== categoriesDropdown &&
      targetIsNotChildOfDropdown &&
      !dropdownIsHidden
    )
      categoriesDropdown.classList.add("hidden");
  });
</script>
{{ end }}
