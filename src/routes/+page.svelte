<script>
  import { Card, CardHeader, CardBody, Col, ButtonGroup, Button } from '@sveltestrap/sveltestrap';

  import CardCol from '../lib/components/CardCol.svelte';
  import CardRow from '../lib/components/CardRow.svelte';
  import WorkCard from '../lib/components/cards/CaseStudy.svelte';

  import About from '../lib/components/cards/About.svelte';
    import Skill from '../lib/components/cards/Skill.svelte';
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

  <CardRow header="Skills" id="skills">
    <p>I'm going to put a search bar here, and use a CSV reader to create new cards based on the CSV file. My wife wants me to play Mario Kart right now so I'm going to do that and get some sleep.</p>
    <Skill name="Ruby on Rails" level="Expert" />
    <Skill name="HTML" level="Expert" />
    <Skill name="CSS" level="Expert" />
    <Skill name="JavaScript" level="Advanced" />
    <Skill name="Svelte" level="Advanced" />
    <Skill name="React" level="Advanced" />
    <Skill name="C#" level="Advanced" />
    <Skill name="Unity" level="Experienced" />
    <Skill name="Java" level="Experienced" />
    <Skill name="Node.js" level="Experienced" />
    <Skill name="Express.js" level="Experienced" />
    <Skill name="PostgreSQL" level="Experienced" />
    <Skill name="SQL" level="Experienced" />
    <Skill name="MongoDB" level="Experienced" />
    <Skill name="Python" level="Experienced" />
    <Skill name="C++" level="Novice" />
    <Skill name="Bash" level="Experienced" />
    <Skill name="C" level="Beginner" />
    <Skill name="Docker" level="Experienced" />
    <Skill name="Kubernetes" level="Experienced" />
    <Skill name="Azure" level="Experienced" />
    <Skill name="AWS" level="Experienced" />
    <Skill name="Heroku" level="Experienced" />
    <Skill name="DigitalOcean" level="Experienced" />
    <Skill name="Git" level="Advanced" />
    <Skill name="Windows" level="Advanced" />
    <Skill name="Linux" level="Advanced" />
    <Skill name="Trello" level="Experienced" />
    <Skill name="Jira" level="Experienced" />
    <Skill name="Slack" level="Experienced" />
    <Skill name="Discord" level="Experienced" />
    <Skill name="Zoom" level="Experienced" />
    <Skill name="Google Meet" level="Experienced" />
    <Skill name="Microsoft Teams" level="Experienced" />
    <Skill name="VS Code" level="Expert" />
    <Skill name="Visual Studio" level="Experienced" />
    <Skill name="IntelliJ" level="Experienced" />
    <Skill name="Gradle" level="Experienced" />
    <Skill name="Maven" level="Experienced" />
    <Skill name="NPM" level="Experienced" />
    <Skill name="Yarn" level="Experienced" />
    <Skill name="Webpack" level="Experienced" />
    <Skill name="ESLint" level="Experienced" />
    <Skill name="RuboCop" level="Experienced" />
    <Skill name="RSpec" level="Experienced" />
    <Skill name="Rake" level="Experienced" />
    <Skill name="Capistrano" level="Experienced" />
    <Skill name="CMake" level="Novice" />
  </CardRow>

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