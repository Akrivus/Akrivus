<script>
  import { onMount } from 'svelte';
  import { Row, Container, Input } from '@sveltestrap/sveltestrap';

  import Skill from './Skill.svelte';

  export let key;

  let src = `./data/${key}.csv`;
  let search = '';
  let data = [];
  let rows = [];

  const tokenize = (tokens) => tokens.split(' ');

  const byGrade = (row1, row2) => row1[1].localeCompare(row2[1]);
  const byToken = (row, token) => tokenize(token).some(_ => row[2].includes(_));

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

  onMount(() => fetch(src).then(async res => {
    const csv = await res.text();
    data = csv.split('\r\n')
      .map(row => row.split(','))
      .map(c => [c[0], c[1], tokenize(c[2])]);
  }).then(() => filler()));
</script>

<Row>
  <Container class="mb-2">
    <Input type="search" placeholder="Search my skills" bind:value={search} on:click={() => search = ''} on:input={filter} />
  </Container>
  {#each rows as row}
    <Skill name={row[0]} level={row[1]} />
  {/each}
</Row>