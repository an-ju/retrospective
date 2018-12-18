<template>
    <div class="flex-col max-w-lg">
        <div class="w-full">
            <div v-for="item in action_items" class="border-2 border-grey-light mx-1 w-full">
                <p class="text-grey-dark my-2">{{ item.name }}</p>
            </div>
        </div>
        <form class="hover:border-purple-light w-full border-2 border-grey-light mx-1" @submit.prevent="submit_form">
            <div class="items-center text-lg mb-3 mx-3">
                <label class="block text-grey-dark pr-4 py-3" for="name">
                    New action item:
                </label>
                <input class="w-full px-2 py-3 border-2 border-grey-dark rounded text-grey-darker focus:outline-none focus:bg-white focus:border-purple" type="text" id="name" v-model="new_action_item.name"/>
            </div>
            <div class="mx-3">
                <div class="lg:w-full my-3">
                    <button class="shadow bg-purple hover:bg-purple-light focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded">Add</button>
                </div>
            </div>
        </form>
    </div>
</template>

<script>
    export default {
        name: "action_item_form",
        data() {
            return {
                action_items: [],
                new_action_item: {}
            }
        },
        methods: {
            submit_form() {
                this.$http.post('/action_items', { action_item: this.new_action_item }).then(response => {
                    this.new_action_item.id = response.body.id
                    this.action_items.push(this.new_action_item)
                    this.new_action_item = {}
                }, response => {
                    console.log(response)
                })
            }
        }
    }
</script>

<style scoped>

</style>