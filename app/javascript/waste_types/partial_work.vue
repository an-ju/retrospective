<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Partially done work</p>
            <p class="text-grey-darker">
                Explanation: Partially done software development has a tendency to become obsolete, and it gets in the way of other
                development that might need to be done.
            </p>
        </div>
        <waste :issue_items="items" waste_type="partial_work"></waste>
    </div>
</template>

<script>
    export default {
        name: "partial_work",
        data() {
            return {
                items: [
                    'Multitasking is common in our team.',
                    'We have some partially done work that becomes obsolete',
                    'We are working on features that we do not know if it will eventually work'
                ]
            }
        }
    }
</script>

<style scoped>

</style>