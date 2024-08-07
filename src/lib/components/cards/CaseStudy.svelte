<script>
  import SvelteMarkdown from 'svelte-markdown';
  import { onMount } from 'svelte';

  export let key;
  export let format = "png";

  let img = `./data/case-studies/${key}.${format}`;
  let src = `./data/case-studies/${key}.md`;
  let text;
  $: source = text;

  onMount(() => fetch(src).then(async res => text = await res.text()));

  import { CardImg, CardBody, CardHeader, Button, Modal, ModalBody, ModalHeader, ModalFooter } from '@sveltestrap/sveltestrap';
  
  export let title;
  export let subtitle;

  import FlipCard from '../FlipCard.svelte';

  let open = false;

  function toggle()
  {
    open = !open;
  }
</script>

<FlipCard md={6} lg={3}>
  <CardImg src="{img}" />
  <CardBody>
    <h5>{title}</h5>
    <p>{subtitle}</p>
  </CardBody>
  <svelte:fragment slot="body">
    <CardHeader>
      <h5>{title}</h5>
      <span>{subtitle}</span>
    </CardHeader>
    <CardBody>
      <SvelteMarkdown {source} />
    </CardBody>
  </svelte:fragment>
  <div slot="footer" style="float: right;">
    <Button on:click={toggle}>Read</Button>
  </div>
</FlipCard>
<Modal {toggle} size="lg" bind:isOpen={open}>
  <ModalHeader {toggle}>
    <h5>{title}</h5>
    <span>{subtitle}</span>
  </ModalHeader>
  <ModalBody>
    <SvelteMarkdown {source} />
  </ModalBody>
  <ModalFooter>
    <Button color="secondary" on:click={toggle}>Close</Button>
  </ModalFooter>
</Modal>