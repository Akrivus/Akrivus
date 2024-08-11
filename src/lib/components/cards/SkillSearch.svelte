<script>
  import { onMount } from 'svelte';
  import { Row, Container, Input } from '@sveltestrap/sveltestrap';

  import Skill from './Skill.svelte';

  const tokenize = (tokens) => tokens.split(' ');

  const byGrade = (row1, row2) => row1[1].localeCompare(row2[1]);
  const byToken = (row, token) => tokenize(token).some(_ => row[2].includes(_));

  const clear = () => search = '';

  const filler = () => rows = filter(null, "default");

  const filter = (e, token = search) => {
    if (token === '')
      return filler();
    let _rows = data
      .sort(byGrade)
      .filter((row) => byToken(row, token));
    if (_rows.length === 0)
      return rows;
    return rows = _rows;
  };

  const src = './obsidian/My Skills.md';

  let search = '';
  let data = [];
  let rows = [];

  let searches = ["web", "ruby", "javascript", "api", "software", "python", "linux", "c#", "java", "ai", "c++", "unity", "games", "iot", "hardware"];
  let currentSearch = 0;

  function type() {
    if (focused) return;
    let string = searches[currentSearch++ % searches.length];
    let index = 0;

    function typeNext() {
      if (focused) return;
      if (index < string.length) {
        search += string[index];
        index++;
        setTimeout(typeNext, 100);
      } else {
        filter();
        setTimeout(type, 1000);
      }
    }

    clear();
    setTimeout(typeNext, 5000);
  }

  let focused = false;

  $: if (!focused) {
    type();
  }

  onMount(() => fetch(src).then(async res => {
    const csv = await res.text();
    data = csv.split('\r\n')
      .map(row => row.split('|')
        .map(cell => cell.trim()))
      .map(c => [c[1], c[2], tokenize(c[3])])
      .slice(3, -1);
  }).then(() => filler()));
</script>

<Row>
  <Container class="mb-4">
    <Input type="search" placeholder="Search my skills (e.g. development)" bind:value={search}
      on:click={clear} on:input={filter}
      on:focus={() => focused = true} on:blur={() => focused = false} />
  </Container>
  {#each rows as row}
    <Skill name={row[0]} level={row[1]} />
  {/each}
</Row>