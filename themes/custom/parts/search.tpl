{{ define "custom/parts/search.tpl"}}
<div
  id="custom-search"
  class="border rounded-full flex items-center text-black"
>
  <button
    class="p-1 px-2 rounded-l-full bg-slate-200 hover:bg-slate-300 border-r group"
  >
    <i
      class="fa-solid fa-magnifying-glass group-active:scale-95 transition-transform duration-150"
    ></i>
  </button>
  <input
    type="text"
    class="p-1 pr-3 outline-0 w-full rounded-r-full text-[.8rem]"
  />
</div>
{{ end }}
