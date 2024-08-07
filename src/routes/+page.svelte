<script>
  import CardCol from '../lib/components/CardCol.svelte';
  import CardRow from '../lib/components/CardRow.svelte';
  import WorkCard from '../lib/components/cards/CaseStudy.svelte';

  import About from '../lib/components/cards/About.svelte';

  import SearchCards from '../lib/components/SearchCards.svelte';
</script>

<style>
  :global(body) {
    background-color: #121416;
  }
</style>

<CardRow>

  <CardCol>
    <About>
      <p>
        I'm a software engineer with seven years of experience developing web
        apps, APIs, and games. I've worked with a variety of technologies,
        including Ruby on Rails, Unity, and React.
      </p>
      <p>
        I'm passionate about building software that makes a difference in people's lives.
      </p>
      <p>
        Despite its polished appearance, this site is a work in progress.
      </p>
    </About>
  </CardCol>

  <CardRow header="Experience" id="experience">
    <WorkCard key="UNITY"
      title="Unity" subtitle="Software Engineer" />

    <WorkCard key="VISUALLIVE"
      title="VisualLive" subtitle="Full Stack Developer" />

    <WorkCard key="SYNTRENO"
    title="Syntreno" subtitle="Lead Software Engineer" />

    <WorkCard key="FREELANCE"
      title="OCO" subtitle="Founder, Developer" />
  </CardRow>

  <SearchCards key="SKILLS" />

  <CardRow header="Side Projects" id="projects">
    <WorkCard key="PORTFOLIO"
      title="My Portfolio" subtitle="Pre-built SPA with Svelte" />

    <WorkCard key="OCO"
      title="Order Coffee Online" subtitle="Coffee ordering platform." />

    <WorkCard key="CONFABLE" format="gif"
      title="Confable" subtitle="ML-driven bodies, LLM-driven moves." />

    <WorkCard key="BLOCKPARTY"
      title="Block Party" subtitle="RPG engine in Minecraft." />
  </CardRow>
</CardRow>