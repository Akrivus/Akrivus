<script>
  import Project from './Project.svelte';
</script>

<main>
  <div class="container px-4 py-5" id="featured-3">
    <h2 class="pb-2 border-bottom">Projects</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <Project icon="cloud"
        title="Portfolio"
        description="I redesigned my portfolio with Svelte!"
        action="View Portfolio"
        actionHref="https://owen.codes"
        />
      <Project icon="brain"
        title="ML Agents"
        description="I'm learning how to use ML Agents in Unity!"
        action="View Repository"
        actionHref="https://github.com/Akrivus"
        />
      <Project icon="gamepad"
        title="Unity Projects"
        description="I'm also learning how to use Unity!"
        action="View Repository"
        actionHref="https://github.com/Akrivus"
        />
    </div>
  </div>
</main>