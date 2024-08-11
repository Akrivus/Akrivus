<script>
  import SvelteMarkdown from 'svelte-markdown';

  import { onMount } from 'svelte';

  export let src;

  let text;

  $: source = text;
  
  onMount(() => fetch(src).then(async res => text = await res.text()));
</script>

<SvelteMarkdown {source} />