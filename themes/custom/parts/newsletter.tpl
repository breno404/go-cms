{{define "custom/parts/newsletter.tpl"}}
<section
  class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2 lg:gap-4 border-y border-slate-300 p-3 my-6 items-center"
>
  <span
    class="col-span-1 lg:col-span-2 text-md lg:text-lg font-semibold text-slate-700"
    >Inscreva-se para receber nossas newsletter</span
  >
  <form
    id="newsletter-form"
    class="col-span-1 flex"
    method="post"
    action="/api/v1/newsletter"
  >
    <input
      id="email"
      name="email"
      type="email"
      placeholder="example@mail.com"
      class="outline-0 border border-slate-300 text-sm p-2 mx-1 flex-2 xl:flex-3"
    />
    <button
      type="submit"
      class="mx-1 p-2 border border-slate-600 hover:border-slate-500 bg-slate-600 hover:bg-slate-500 text-white rounded-sm cursor-pointer flex-1 text-sm xl:text-base"
    >
      Inscrever-se
    </button>
  </form>
  <script>
    const form = document.getElementById("newsletter-form");

    form.addEventListener("submit", async (e) => {
      e.preventDefault();

      const formData = new FormData(form, e.submitter);
      let contentLength = 0;
      const email = formData.get("email");

      for (let [k, v] of formData.entries()) {
        if (typeof v == "string") contentLength += v.length;
        if (typeof v == "object") contentLength += v.size;
      }

      const headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "Content-Length": contentLength,
        Accept: "application/json",
      };

      console.log(headers);

      //   const response = await fetch("/api/v1/newsletter", {
      //     method: "POST",
      //     cache: "no-cache",
      //     mode: "same-origin",
      //     headers,
      //     body: formData,
      //   });

      //   if (response.status == 200) {
      //     form.reset();
      //     const data = await response.json();

      //     console.log(data);
      //     alert("Successfully subscribed");
      //   }

      //   if (response.status == 400) {
      //     alert("Invalid email");
      //     return;
      //   }

      //   if (response.status == 500) {
      //     alert("Server error");
      //     return;
      //   }

      alert(email);
    });
  </script>
</section>
{{ end }}
