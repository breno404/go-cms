{{define "custom/parts/news.tpl"}}
<section class="grid grid-cols-3 gap-4 p-4">
  <div class="flex flex-col col-span-2 gap-4">
    <div class="h-[300px] w-[400px]"></div>
    <hr class="border-slate-300" />
    <div class="h-[300px] w-[400px]"></div>
    <hr class="border-slate-300" />
    <div class="h-[300px] w-[400px]"></div>
    <hr class="border-slate-300" />
    <div class="h-[300px] w-[400px]"></div>
    <button>Veja mais</button>
  </div>
  <div class="col-span-1">
    <style>
      #most-read ol {
        counter-reset: item;
        list-style-type: none;
      }
      #most-read li {
        display: flex;
        align-items: center;
        font-weight: 500;
        padding: 0.5rem 0;
      }
      #most-read li:first-child {
        padding-top: 0;
      }
      #most-read li:last-child {
        padding-bottom: 0;
      }
      #most-read li:before {
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
        <a class="flex-1 text-right cursor-pointer hover:underline"
          >Veja mais</a
        >
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
