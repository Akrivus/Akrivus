<script>
  import { Row, Col, CardBody, CardImg, CardFooter, ButtonGroup, Button } from '@sveltestrap/sveltestrap';

  import src from '$lib/images/portrait.jpg';
  import { onDestroy, onMount } from 'svelte';

  const width = () => _width = window.innerWidth;

  let _width = 1080;
  $: display = _width > 576 ? 'flex' : 'none';

  onMount(() => {
    window.addEventListener('resize', width);
    onDestroy(() => window.removeEventListener('resize', width));
    width();
  });
</script>

<style>
  .name {
    color: var(--bs-success);
    font-size: 3rem;
  }
</style>

<CardBody>
  <Row class="justify-content-evenly">
    <Col>
      <div class="h-100 d-flex align-items-center">
        <div>
          <h1>Hi,<br /><span class="name">I'm Owen!</span></h1>
          <hr />
          <slot />
        </div>
      </div>
    </Col>
    <Col sm={3} style="display:{display}">
      <div class="h-100 d-flex align-items-center portrait">
        <CardImg src="{src}" alt="Portrait of Owen" class="rounded-circle m-auto" style="max-height: 30vh;" />
      </div>
    </Col>
  </Row>
</CardBody>
<CardFooter>
  <ButtonGroup>
    <Button color="success" href="./Owen-Adrian-Software-Engineer-Resume.pdf" target="_blank">Résumé</Button>
  </ButtonGroup>
  <ButtonGroup>
    <Button color="primary" href="https://linkedin.com/in/owen-adrian" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin" /></Button>
    <Button color="dark" href="https://github.com/Akrivus" target="_blank" aria-label="GitHub"><i class="fab fa-github" /></Button>
    <Button color="danger" href="https://youtube.com/channel/UCA52QVCQ0NI9QWBWpx-aSOg" target="_blank" aria-label="YouTube"><i class="fab fa-youtube" /></Button>
  </ButtonGroup>
</CardFooter>