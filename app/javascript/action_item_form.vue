<template>
    <div class="flex-col max-w-lg">
        <div class="w-full">
            <div v-for="(item, index) in action_items" class="border-2 mx-1 w-full border-grey-light">
                <p class="text-grey-dark my-2">{{ item.name }}</p>
                <form class="hover:border-purple-light w-full" @submit.prevent="update_item(index)">
                    <label :for="item.id + '_content'">
                        Acceptance criteria
                    </label>
                    <input :class="item_status(item)" class="w-full px-2 py-3 border-2 rounded text-grey-darker focus:outline-none focus:bg-white focus:border-purple" type="text" :name="item.id + '_content'" v-model="item.content"/>
                    <button class="shadow bg-purple hover:bg-purple-light focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded">Confirm</button>
                </form>
            </div>
        </div>
        <form class="w-full border-2 border-grey-light mx-1" @submit.prevent="submit_form">
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
            },
            update_item(item_index) {
                let item = this.action_items[item_index]
                this.$http.put('/action_items/' + item.id, { action_item: { content: item.content }}).then(response => {
                    console.log(response)
                }, response => {
                    console.log(response)
                })
            },
            item_status(item) {
                if (item.content && item.content.length > 0) {
                    return 'border-grey-light'
                } else {
                    return 'border-red-light'
                }

            }
        }
    }
</script>

<style scoped>

</style>