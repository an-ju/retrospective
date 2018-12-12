<template>
    <div class="mt-10">
        <div class="mb-6">
            <p class="text-lg">Mismanaging the backlog</p>
            <p class="text-grey-darker">
                Explanation: The cost of duplicating work, expediting lower value user features, or delaying necessary bug fixes
            </p>
        </div>
        <waste :issue_items="items" waste_type="mismanage_backlog"></waste>
    </div>
</template>

<script>
    export default {
        name: "mismanage_backlog",
        data() {
            return {
                items: [
                    'Implemented a low-priority story first.',
                    'Added a new story into the backlog.',
                    'Blocked by an urgent bug fix.'
                ]
            }
        }
    }
</script>

<style scoped>

</style>