<template>
   <div class="mt-10">
       <div class="mb-6">
           <p class="text-lg">Building the wrong feature</p>
           <p class="text-grey-darker">
               Explanation: The cost of building a feature or product that does not address user or business needs.
           </p>
       </div>
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
               <input class="border-2 border-grey-lighter rounded text-grey-darker leading-tight focus:outline-none focus:bg-white focus:border-purple" type="number" id="rating" min="0" max="5"/>
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
        name: "wrong_feature",
        data() {
            return {
                items: [
                    'Implemented a feature that does not have an instant business value for the customer.',
                    'Implemented an interaction that the customer did not recognize.'
                ],
                checked: [false, false],
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
            }
        }
    }
</script>

<style scoped>

</style>