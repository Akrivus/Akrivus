<script>
  import CardCol from "../CardCol.svelte";

  export let name;
  export let level;

  let label;
  let color;

  $: switch (level)
  {
    case "A":
      label = "Expert";
      break;
    case "B":
      label = "Proficient";
      break;
    case "C":
      label = "Competent";
      break;
    case "D":
      label = "Experienced";
      break;
    case "F":
      label = "Avoiding";
      break;
    default:
      label = "Familiar";
  }

  $: switch (level)
  {
    case "A":
      color = "warning";
      break;
    case "B":
      color = "success";
      break;
    case "C":
      color = "primary";
      break;
    case "D":
      color = "white";
      break;
    case "F":
      color = "danger";
      break;
    default:
      color = "secondary";
  }
</script>

<CardCol sm={2} body center>
  {name}
  {#if level}
    <br />
    <span class="text-{color} small">({label})</span>
  {/if}
</CardCol>