<template>
    <div class="flex my-2 px-3">
        <div class="w-4/5 rounded border-grey-light border py-2 px-3" >
                {{ name }}
        </div>
        <div class="w-1/5 mx-2 rounded border py-2 px-3">
            {{ state }}
        </div>
    </div>
    
</template>

<script>
    export default {
        name: "action_item",
        props: {
            action_item: String
        },
        created() {
            let item_data = JSON.parse(this.action_item)
            this.id = item_data.id
            this.name = item_data.name
            this.content = item_data.content
            this.comment = item_data.comment
            this.state = item_data.state
        },
        data() {
            return {
                id: null,
                name: null,
                content: null,
                comment: null,
                state: null
            }
        }
    }
</script>

<style scoped>

</style>