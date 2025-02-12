{{define "custom/parts/newsletter.tpl"}}
<section class="flex justify-around items-center border-y border-slate-300 p-3">
  <span>Subscribe to our newsletter</span>
  <form id="newsletter-form" method="post" action="/api/v1/newsletter">
    <input
      id="email"
      name="email"
      type="email"
      placeholder="example@mail.com"
      class="outline-0 border border-slate-300 text-sm p-2 mx-1"
    />
    <button
      type="submit"
      class="mx-1 p-2 border border-slate-400 hover:border-slate-600 hover:bg-slate-600 hover:text-white rounded-sm cursor-pointer"
    >
      Subscribe
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
