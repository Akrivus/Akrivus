<script>
  import { Container, Input } from '@sveltestrap/sveltestrap';

  import { onMount } from 'svelte';

  import CardRow from './CardRow.svelte';
  import SearchCard from './SearchCard.svelte';

  export let key;

  const csvToMap = (csv) => csv.split('\n').map(row => row.split(','));
  const byKeyword = row => {
    let keywords = row[2];
    if (!keywords) return false;
    return keywords.toLowerCase().includes(search.toLowerCase());
  }

  let search = '';
  let src = './data/' + key + '.csv';
  let map = [];
  $: data = map.filter(byKeyword);

  onMount(() => fetch(src).then(async res => map = csvToMap(await res.text())));
</script>

<CardRow header="Skills">
  <Container>
    <Input type="search" placeholder="Search Skills" bind:value={search} />
  </Container>
  {#each data as row}
    <SearchCard name={row[0]} level={row[1]} />
  {/each}
</CardRow>