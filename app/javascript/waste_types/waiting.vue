<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Waiting</p>
            <p class="text-grey-darker">
                Explanation: The cost of idle time, often hidden by multi-tasking.
            </p>
        </div>
        <waste :issue_items="items" waste_type="waiting"></waste>
    </div>
</template>

<script>
    export default {
        name: "waiting",
        data() {
            return {
                items: [
                    'Testing takes a long time to do, due to some manual steps',
                    'Some people have to wait for others to finish some critical tasks.',
                    'We have to wait for some critical inputs from outside the team.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>