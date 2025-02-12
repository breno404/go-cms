{{ define "custom/parts/banner.tpl" }}
<div
  class="flex justify-center items-center w-full h-[600px] bg-[linear-gradient(to_bottom,rgba(0,0,0,0.2),rgba(0,0,0,0.9)_90%),url(/static/img/image-1.jpg)] bg-cover bg-no-repeat bg-center bg-origin-border bg-clip-border bg-local p-2"
>
  <div
    class="text-white mx-4 sm:mx-6 md:max-w-[75%] lg:max-w-[66.66%] xl:max-w-[50%]"
  >
    <h2
      class="text-center text-6xl font-semibold drop-shadow-md border-b border-white pb-2 mt-4"
    >
      {{ index .items "banner-title" }}
    </h2>
    <p class="mt-4 pb-2">
      {{ index .items "banner-content" }}
    </p>
  </div>
</div>
{{ end }}
