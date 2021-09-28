<template>
  <div class="inline-flex rounded-full border-grey-light test m-auto lg:m-0 mr-5">
    <button>
      <span class="w-auto inline-flex justify-end items-center text-grey p-2">
        <font-awesome :icon="['fas', 'search']" />
      </span>
    </button>
    <input
      class="w-full rounded mr-4"
      type="text"
      placeholder="Search"
      :value="value"
      @input="$emit('input', $event.target.value)"
    />
  </div>
</template>
<script>
export default {
  props: ["value"],
};
</script>
<style scoped>
svg {
  color: #9fa3b6;
}

.test {
  border: 1px solid #9fa3b6;
  /* width: 10%; */
}

input:focus {
  outline: none;
  border: none;
}
</style>