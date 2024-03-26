<script>
  import Section from "$lib/components/Section.svelte";
  import Card from "$lib/components/cards/Card.svelte";
  import ThirdCard from "$lib/components/cards/smart/ThirdCard.svelte";
</script>

<Section id="about" title="Who I Am" link="About">
  <Card sizes={["12", "md-8"]}>
    <h5 slot="header" class="card-title">I'm Owen.</h5>
    <p  slot="content" class="card-text">
      I observe the world around me and think about ways to improve it. I envision
      solutions and implement them using my programming prowess and technical expertise.
      For {new Date().getFullYear() - 2017} years, I've driven growth and productivity
      for organizations by developing reliable, scalable, and secure software.
    </p>
  </Card>
  <ThirdCard title="I'm a self-starter.">
    I took control of my destiny and started my own business where I
    learned the direct impact of my decisions and the value of my work.
  </ThirdCard>
  <ThirdCard title="I'm an engineer.">
    I'm proficient in Ruby, JavaScript, and C#, but nothing is beyond my
    reach; I've worked on codebases and frameworks in C++, Python and Java.
  </ThirdCard>
  <ThirdCard title="I'm a full stack developer.">
    I have experience with Ruby on Rails, ASP.NET Core, and JavaScript,
    deploying my solutions on various platforms, including Azure, AWS, and Heroku.
  </ThirdCard>
  <ThirdCard title="I solve problems.">
    I immerse myself in the problem space to understand the challenges, plan, and execute by
    leveraging my expertise and the team's.
  </ThirdCard>
  <ThirdCard title="I'm talented.">
    I've been programming since I was 12, and my journey from start-up to global enterprise has given me a
    sense of what works and what doesn't.
  </ThirdCard>
  <ThirdCard title="I'm adaptive.">
    I work best when I'm closest to the challenge, where I can readily adjust my perspective and formulate
    the most decisive solutions.
  </ThirdCard>
  <ThirdCard title="I'm a team player.">
    I look for opportunities to accomplish more by working with others, whether during caffeinated nights
    at the office or at home over a video call.
  </ThirdCard>
</Section>