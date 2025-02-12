{{define "custom/parts/detach.tpl"}}
<section class="grid grid-cols-3 grid-rows-2 h-[600px] gap-4 p-4 text-white">
  {{range $index, $title := index .items "detach-title"}}
  {{if eq $index 0}}
  <div
    class="flex flex-col justify-end col-span-2 row-span-2 p-2 rounded-md bg-[linear-gradient(to_bottom,rgba(0,0,0,0.2)_40%,rgba(0,0,0,0.95)_90%),url(/static/img/image-2.jpg)] bg-cover bg-no-repeat bg-center bg-origin-border bg-clip-border bg-local"
  >
    <h4 class="text-xl font-semibold drop-shadow-md pb-1 mt-2">
      {{ $title | or ""}}
    </h4>
    <p class="pb-2 mt-2 text-sm max-h-16 overflow-ellipsis overflow-hidden">
      {{ index $.items "detach-resume" $index | or ""}}
    </p>
  </div>
  {{ else }}
  <div
    class="flex flex-col justify-end col-span-1 row-span-1 p-2 rounded-md bg-[linear-gradient(to_bottom,rgba(0,0,0,0.2)_20%,rgba(0,0,0,0.90)_80%),url(/static/img/image-4.jpg)] bg-cover bg-no-repeat bg-center bg-origin-border bg-clip-border bg-local"
  >
    <h4 class="text-base font-semibold drop-shadow-md pb-1 mt-2">
      {{ $title | or ""}}
    </h4>
    <p class="pb-1 mt-1 text-xs max-h-10 overflow-ellipsis overflow-hidden">
      {{ index $.items "detach-resume" $index | or ""}}
    </p>
  </div>
  {{ end }}
  {{ end }}
</section>
{{ end }}
