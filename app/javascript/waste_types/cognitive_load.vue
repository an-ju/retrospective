<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Extraneous cognitive load</p>
            <p class="text-grey-darker">
                Explanation: The costs of unneeded expenditure of mental energy.
            </p>
        </div>
        <waste :issue_items="items" waste_type="cognitive_load"></waste>
    </div>
</template>

<script>
    export default {
        name: "cognitive_load",
        data() {
            return {
                items: [
                    'There are stories that are too complex to design a simple solution for.',
                    'We spend a long time searching for the right library/tool/framework for a feature.',
                    'We spend a long time understanding the contexts when working on a story.',
                    'The codebase is poorly organized and costs us a long time to develop new features.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>