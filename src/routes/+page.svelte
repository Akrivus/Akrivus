<script>
  import AboutSection from '$lib/components/sections/AboutSection.svelte';
  import JourneySection from '$lib/components/sections/JourneySection.svelte';
  import ProjectsSection from '$lib/components/sections/ProjectsSection.svelte';
  import SkillsSection from '$lib/components/sections/SkillsSection.svelte';
  import Landing from '$lib/components/Landing.svelte';
  import NavArea from '$lib/components/nav/NavArea.svelte';
  import ScrollButton from '$lib/components/nav/ScrollButton.svelte';
  import Portrait from '$lib/components/Portrait.svelte';
</script>

<style>
  h1 {
    font-size: 3rem;
  }

  .name {
    font-size: 4rem;
    color: var(--bs-success);
  }
</style>

<Landing>
  <div slot="lead">
    <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
    <p class="lead">
      I'm driven by a passion for creating and learning. I've been
      building solutions for 7 years, as an entrepreneur and software engineer.
      My goal is to build solutions that make technology more accessible and
      enjoyable for everyone.
    </p>
    <a href="Owen-Adrian-Software-Engineer-Resume.pdf" class="btn btn-lg btn-success">Résumé</a>
    <a href="https://linkedin.com/in/owen-adrian" class="btn btn-lg btn-success" aria-label="LinkedIn"><i class="fab fa-linkedin" /></a>
    <a href="https://github.com/Akrivus" class="btn btn-lg btn-success" aria-label="GitHub"><i class="fab fa-github" /></a>
    <a href="https://www.youtube.com/channel/UCA52QVCQ0NI9QWBWpx-aSOg" class="btn btn-lg btn-success" aria-label="YouTube"><i class="fab fa-youtube" /></a>
    <ScrollButton />
  </div>
  <div class="col" slot="side">
    <Portrait />
  </div>
</Landing>

<NavArea>
  <AboutSection />
  <ProjectsSection />
  <SkillsSection />
  <JourneySection />
</NavArea>