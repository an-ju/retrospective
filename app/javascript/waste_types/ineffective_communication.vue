<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Ineffective_communication</p>
            <p class="text-grey-darker">
                Explanation: The cost of incomplete, incorrect, misleading, inefficient, or absent communication.
            </p>
        </div>
        <waste :issue_items="items" waste_type="ineffective_communication"></waste>
    </div>
</template>

<script>
    export default {
        name: "ineffective_communication",
        data() {
            return {
                items: [
                    'We had/are having communication problems in our team.',
                    'We had/are having communication problems with the teaching staff.',
                    'We had/are having communication problems with our customer.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>