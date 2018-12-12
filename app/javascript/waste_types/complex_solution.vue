<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Unnecessarily complex solutions</p>
            <p class="text-grey-darker">
                Explanation: The cost of creating a more complicated solution than necessary, a missed opportunity to simplify features, user interface, or code.
            </p>
        </div>
        <waste :issue_items="items" waste_type="complex_solution"></waste>
    </div>
</template>

<script>
    export default {
        name: "complex_solution",
        data() {
            return {
                items: [
                    'There are user stories that take an unnecessarily long time to finish.',
                    'We spend an unnecessarily long time in designing the architecture for a feature.',
                    'We have features/designs that do not instantly add values to customers.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>