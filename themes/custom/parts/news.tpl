{{define "custom/parts/news.tpl"}}
<section class="grid grid-cols-3 gap-4 p-4">
  <div class="flex flex-col col-span-3 lg:col-span-2 gap-4 relative">
    {{$total := len .items.news}}
    {{ $lastIndex := int (sub (flt $total) 1)}}
    {{ range $index, $news := index .items.news }}
    <div
      class="flex p-4 gap-4 items-center lg:h-[300px] flex-wrap lg:flex-nowrap"
    >
      <div class="flex-[1_2_auto] max-w-[400px]">
        <img
          class="h-full w-auto object-cover"
          src="{{ $news.image }}"
          alt=""
        />
      </div>

      <div class="flex lg:h-full flex-col justify-between flex-[1_1_auto]">
        <h4 class="font-semibold text-xl">{{ $news.title }}</h4>
        <small class="text-slate-500 text-xs"
          >{{ $news.time }} em {{ $news.category }}</small
        >
      </div>
    </div>
    {{if ne  $index $lastIndex}}
    <hr class="border-slate-300" />
    {{ end }}
    {{ end }}
    <button
      id="expand-news"
      class="absolute bottom-0 w-full py-2 bg-red-700 font-semibold hover:bg-red-600 transition-all duration-200 text-white cursor-pointer"
    >
      Ver mais
    </button>
    <script>
      const expandNews = document.getElementById("expand-news");

      expandNews.addEventListener("click", loading);

      function loading(e) {
        e.preventDefault();
        this.setAttribute("disabled", "true");
        const content = this.innerHTML;

        this.innerHTML = '<i class="fa-solid fa-spinner fa-spin-pulse"></i>';

        setTimeout(() => {
          this.removeAttribute("disabled");
          this.innerHTML = content;
        }, 5000);
      }
    </script>
  </div>
  <div class="col-span-1 hidden lg:block">
    <style>
      #most-read ol,
      #trending-topics ol {
        counter-reset: item;
        list-style-type: none;
      }
      #most-read li,
      #trending-topics li {
        display: flex;
        align-items: center;
        font-weight: 500;
        padding: 0.5rem 0;
      }
      #most-read li:first-child,
      #trending-topics li:first-child {
        padding-top: 0;
      }
      #most-read li:last-child,
      #trending-topics li:last-child {
        padding-bottom: 0;
      }
      #most-read li:before,
      #trending-topics li:before {
        margin-right: 1rem;
        color: var(--color-slate-400);
        font-weight: 300;
        font-size: 1.5rem;
        content: counter(item) "  ";
        counter-increment: item;
      }
    </style>
    <div id="most-read" class="border border-slate-200 shadow-sm rounded-xl">
      <div class="flex py-2 px-4 border-b border-slate-300">
        <h4 class="flex-auto text-xl font-semibold">Mais lidas</h4>
        <a class="flex-1 text-right cursor-pointer hover:underline">Ver mais</a>
      </div>
      <div class="p-4">
        <ol class="list-inside text-lg">
          <li class="">
            Tiroteio fecha vias expressas, deixa 3 baleados, e helicóptero da
            polícia atingido faz pouso forçado
          </li>
          <hr class="border-slate-300" />
          <li>
            'Se acontecer algo comigo, saiba que tentei ao máximo', escreveu
            brasileiro vítima de tráfico humano ao pai antes de fugir de máfia
            em Mianmar
          </li>
          <hr class="border-slate-300" />
          <li>
            VÍDEO: caminhão-tanque explode em acidente e fumaça de incêndio toma
            conta de rodovia do Paraná
          </li>
          <hr class="border-slate-300" />
          <li>
            Animais, anéis, documentos: brasileiros deportados dos EUA deixam
            tudo pra trás e se queixam de falta de regras claras
          </li>
        </ol>
      </div>
    </div>
    <div
      id="trending-topics"
      class="border border-slate-200 shadow-sm rounded-xl mt-4"
    >
      <div class="flex py-2 px-4 border-b border-slate-300">
        <h4 class="flex-auto text-xl font-semibold">Assuntos em alta</h4>
        <a class="flex-1 text-right cursor-pointer hover:underline">Ver mais</a>
      </div>
      <div class="p-4">
        <ol class="list-inside text-lg">
          <li class="">
            Tiroteio fecha vias expressas, deixa 3 baleados, e helicóptero da
            polícia atingido faz pouso forçado
          </li>
          <hr class="border-slate-300" />
          <li>
            'Se acontecer algo comigo, saiba que tentei ao máximo', escreveu
            brasileiro vítima de tráfico humano ao pai antes de fugir de máfia
            em Mianmar
          </li>
          <hr class="border-slate-300" />
          <li>
            VÍDEO: caminhão-tanque explode em acidente e fumaça de incêndio toma
            conta de rodovia do Paraná
          </li>
          <hr class="border-slate-300" />
          <li>
            Animais, anéis, documentos: brasileiros deportados dos EUA deixam
            tudo pra trás e se queixam de falta de regras claras
          </li>
        </ol>
      </div>
    </div>
  </div>
</section>
{{ end }}
