<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Rework</p>
            <p class="text-grey-darker">
                Explanation: The cost of altering delivered work that should have been done correctly but was not.
            </p>
        </div>
        <waste :issue_items="items" waste_type="rework"></waste>
    </div>
</template>

<script>
    export default {
        name: "rework",
        data() {
            return {
                items: [
                    'There are some reworks happened in the iteration',
                    'We have features that require a serious refactoring.',
                ]
            }
        }
    }
</script>

<style scoped>

</style>