<template>
    <div class="mt-10">
        <form class="w-full max-w-md" @submit.prevent="handleSubmit">
            <div class="md:flex md:items-center mb-6">
                <div class="md:w-full">
                    <div v-for="(issue, index) in items">
                        <label class="block" :class="label_display(index)" :for="checkbox_id(index)">
                            <input type="checkbox" :id="checkbox_id(index)" v-model="checked[index]"/>
                            <span>{{ issue }}</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="md:flex mb-6">
                <label class="block text-grey-darkest pr-4" for="rating">
                    Please give an estimation about the seriousness of this waste:
                </label>
                <input class="border-2 border-grey-dark rounded text-grey-darker leading-tight focus:outline-none focus:bg-white focus:border-purple" type="number" id="rating" min="0" max="5" v-model="rating"/>
            </div>
            <div class="md:flex mb-10">
                <div class="md:w-full">
                    <button class="shadow bg-purple hover:bg-purple-light focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded">Save</button>
                </div>
            </div>
        </form>
    </div>
</template>

<script>
    export default {
        name: "waste",
        props: {
            waste_type: String,
            issue_items: Array
        },
        created() {
            this.items = this.issue_items
            for (let i = 0; i !== this.items.length; i++) {
                this.checked.push(false)
            }
        },
        data() {
            return {
                id: null,
                items: [],
                checked: [],
                rating: null,
            }
        },
        methods: {
            checkbox_id: function (index) {
                return 'checkbox[' + index + ']'
            },
            label_display: function (index) {
                if (this.checked[index]) {
                    return 'bg-green-light text-white'
                } else {
                    return ''
                }
            },
            handleSubmit: function () {
                console.log('submit')
                // Create a new team
                if (this.id == null) {
                    let post_data = {
                        waste: {
                            content: JSON.stringify({ items: this.items, checked: this.checked }),
                            rating: this.rating,
                            waste_type: this.waste_type
                        }
                    }
                    this.$http.post('/wastes', post_data).then(response => {
                        console.log(response)
                    }, response => {
                        console.log(response)
                    })

                    // Edit an existing team
                } else {
                    // TODO: Complete the path of editing an existing team
                }
            },
        }
    }
</script>

<style scoped>

</style>