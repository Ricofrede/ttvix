<script lang="ts">
  import Main from "./layouts/Main/Main.svelte";

  import { language } from "./stores/language";

  const userLang = navigator?.language?.split("-")?.[0] || "en";
  language.set(userLang);

  console.log(import.meta.env.VITE_TEST);
</script>

<Main>
  <h1>TESTTTT</h1>
</Main>
