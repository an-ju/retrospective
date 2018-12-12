<template>
   <div class="mt-10">
       <div class="mb-6">
           <p class="text-lg">Building the wrong feature</p>
           <p class="text-grey-darker">
               Explanation: The cost of building a feature or product that does not address user or business needs.
           </p>
       </div>
       <waste :issue_items="items" waste_type="wrong_feature"></waste>
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
            }
        }
    }
</script>

<style scoped>

</style>