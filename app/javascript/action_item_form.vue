<template>
    <div class="flex max-w-lg">
        <div class="lg:w-full">
            <div v-for="item in action_items">
                <p class="text-grey-dark my-2">{{ item.name }}</p>
            </div>
        </div>
        <form class="w-full" @submit.prevent="submit_form">
            <div class="lg:flex lg:items-center mb-3">
                <label class="block text-grey-dark pr-4" for="name">
                    New action item:
                </label>
                <input class="border-2 border-grey-dark rounded text-grey-darker leading-tight focus:outline-none focus:bg-white focus:border-purple" type="text" id="name" v-model="new_action_item.name"/>
            </div>
            <div class="lg:flex mb-10">
                <div class="lg:w-full">
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
                }, response => {
                    console.log(response)
                })
            }
        }
    }
</script>

<style scoped>

</style>