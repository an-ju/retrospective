<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Psychological Distress</p>
            <p class="text-grey-darker">
                Explanation: The costs of burdening the team with unhelpful stress.
            </p>
        </div>
        <waste :issue_items="items" waste_type="psychological_distress"></waste>
    </div>
</template>

<script>
    export default {
        name: "psychological_distress",
        data() {
            return {
                items: [
                    'Other courses slows down the progress of our team.',
                    'We have some issues with team communication/collaboration.',
                    'We rush out most of the features at the last minute in this iteration.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>