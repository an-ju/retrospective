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
                    'Other coursework slowed down our progress.',
                    'We had/are having some problems with team communication/collaboration.',
                    'We rushed out most of the features at the last minute in this iteration.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>