{{ define "custom/templates/login.tpl" }}
<style>
  input#username:valid + p {
    display: none;
  }

  input#username:invalid {
    border-color: var(--color-red-500);
  }

  label + input#username:invalid {
    color: var(--color-red-500);
  }

  input#username:invalid + p {
    display: block;
    color: var(--color-red-500);
  }

  input#password:valid + p {
    display: none;
  }

  input#password:invalid {
    border-color: var(--color-red-500);
  }

  label + input#password:invalid {
    color: var(--color-red-500);
  }

  input#password:invalid + p {
    display: block;
    color: var(--color-red-500);
  }
</style>
<main class="container h-screen place-content-center place-items-center p-4">
  <form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
        Usuário
      </label>
      <input
        class="shadow appearance-none border border-slate-200 rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
        id="username"
        name="username"
        type="text"
        placeholder="Username"
      />
      <p id="username-error" class="text-xs italic"></p>
    </div>
    <div class="mb-6">
      <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
        Senha
      </label>
      <input
        class="shadow appearance-none border border-slate-200 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
        id="password"
        name="password"
        type="password"
        minlength="8"
        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%]).{8,}"
        placeholder="******************"
      />
      <p id="password-error" class="text-xs italic"></p>
    </div>
    <div class="flex items-center justify-between gap-2">
      <button
        class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
        type="button"
      >
        Sign In
      </button>
      <a
        class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
        href="#"
      >
        Esqueceu a senha?
      </a>
    </div>
  </form>
</main>
{{ end }}
