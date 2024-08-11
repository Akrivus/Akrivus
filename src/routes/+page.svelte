<script>
  import { Container, Col, Row } from '@sveltestrap/sveltestrap';

  import CardCol from '../lib/components/CardCol.svelte';

  import CaseStudy from '../lib/components/cards/CaseStudy.svelte';
  import About from '../lib/components/cards/About.svelte';
  import SkillSearch from '../lib/components/cards/SkillSearch.svelte';
</script>

<style>
  :global(body) {
    background-color: #121416;
  }
</style>

<Container class="mt-5">
  <Row>
    <CardCol lg={6}>
      <About>
        <p>
          I'm a software engineer with seven years of experience developing web
          apps, APIs, and games. I've worked with a variety of technologies,
          including Ruby on Rails, Unity, and React.
        </p>
        <p>
          I'm passionate about building software that makes a difference in people's lives.
        </p>
      </About>
    </CardCol>
    <Col>
      <h2>My Experience</h2>
      <Row>
        <CaseStudy key="UNITY"
          title="Unity" subtitle="Software Engineer" note="March 2020 - May 2023" />
    
        <CaseStudy key="VISUALLIVE"
          title="VisualLive" subtitle="Full Stack Developer" note="March 2019 - March 2020" />
    
        <CaseStudy key="SYNTRENO"
        title="Syntreno" subtitle="Lead Software Engineer" note="August 2023 - August 2024" />
    
        <CaseStudy key="FREELANCE"
          title="OCO" subtitle="Founder, Developer" note="September 2017 - April 2019" />
      </Row>
    </Col>
  </Row>

  <Row>
    <h2 class="mt-5">My Projects</h2>
    <CaseStudy md={6} lg={3} key="PORTFOLIO"
      title="My Portfolio" subtitle="You're looking at it." />

    <CaseStudy md={6} lg={3} key="OCO"
      title="Order Coffee Online" subtitle="Online order and pick-up." />

    <CaseStudy md={6} lg={3} key="CONFABLE" format="gif"
      title="Confable" subtitle="AI-controlled bodies." />

    <CaseStudy md={6} lg={3} key="BLOCKPARTY"
      title="Block Party" subtitle="Craft stories in Minecraft." />
  </Row>

  <h2 class="mt-5">My Skills</h2>
  <SkillSearch key="SKILLS" />
</Container>