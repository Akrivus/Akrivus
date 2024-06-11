<script>
  import { Container, Row, Col } from '@sveltestrap/sveltestrap';
  import Hero from '$lib/components/Hero.svelte';
  import HeroCard from '../lib/components/cards/HeroCard.svelte';
  import WorkCard from '../lib/components/cards/WorkCard.svelte';

  import src_blockparty from '$lib/images/projects/blockparty.png';
  import src_syntreno from '$lib/images/projects/syntreno.png';
  import src_portfolio from '$lib/images/projects/portfolio.png';

  import src_photogo from '$lib/images/projects/photogo.png';
  import src_mobimenu from '$lib/images/projects/mobimenu.png';
  import src_oco from '$lib/images/projects/oco.png';
</script>

<Hero>
  <Container fluid>
    <Row>
      <Col lg={6} xxl={4} class="align-content-center">
        <HeroCard />
        <Row cols={1}>
          <Col>
            <WorkCard title="I'm a self-starter."
              body="In 2017, with nothing but a broken laptop, I developed an ordering app
              for a local cafe. By 2020, I bootstrapped a business and made the mornings of thousands." />
          </Col>
          <Col>
            <WorkCard title="I'm talented."
              body="My journey began in 2012 as a self-taught developer. I learned Visual Basic 6 and made
              a video game for my dad and I to play while he was overseas." />
          </Col>
          <Col>
            <WorkCard title="I'm a team player."
              body="I'm inspired by others, and benefit greatly from collaboration,
              whether during caffeinated nights, at the office, or at home over a Zoom call." />
          </Col>
        </Row>
      </Col>
      <Col lg={6} xxl={8} class="align-content-center">
        <Row cols={{ xs: 1, lg: 2, xl: 3 }}>
          <Col>
            <WorkCard src="{src_syntreno}" alt="AI Doppelgänger" title="AI Doppelgänger" demo="https://owen.codes/an-ai-friend/" repo="phren"
              body="At Syntreno, I combine my Unity, web, and AI knowledge to develop talking avatars
              for interactive web-based training and skill-crafting." />
          </Col>
          <Col>
            <WorkCard src="{src_portfolio}" alt="Portfolio" title="Portfolio" repo="Akrivus"
              body="In 2024, I developed a new portfolio website to showcase my skills and experience using
              SvelteKit to create a dynamic single-page app." />
          </Col>
          <Col>
            <WorkCard src="{src_photogo}" alt="PhotoGo" title="PhotoGo" repo="PhotoGo"
              body="PhotoGo is an image sharing app built in Ruby on Rails 5, but has since been upgraded to
              Ruby on Rails 7 and using ActiveStorage." />
          </Col>
          <Col>
            <WorkCard src="{src_mobimenu}" alt="MobiMenu" title="MobiMenu" repo="MobiMenu"
              body="MobiMenu is web application for managing menus across multiple storefronts and ensuring
              accessible viewing options for customers." />
          </Col>
          <Col>
            <WorkCard src="{src_oco}" alt="Order Coffee Online" title="Order Coffee Online"
              body="OCO was an app for ordering coffee in Kansas City. It was built in Ruby on Rails and
              integrated with Stripe and used Twilio for SMS notifications." />
          </Col>
          <Col>
            <WorkCard src="{src_blockparty}" alt="Block Party" title="Block Party" repo="BlockParty"
              body="Block Party introduces 300 uniquely designed characters, with an LLM-driven dialogue
              system for content creators to use in their videos." />
          </Col>
        </Row>
      </Col>
    </Row>
  </Container>
</Hero>