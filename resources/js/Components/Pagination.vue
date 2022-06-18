<template>
    <div class="container flex justify-center mx-auto">
        <ul class="flex">
            <li>
                <button
                class="h-10 px-5 text-gray-600 bg-white border border-r-0 border-gray-600 hover:bg-gray-100" :disabled="currentPage === 1" @click="previousPage">Vorige</button>
            </li>
            <li v-for="index in pages">
                <button :class="['h-10 px-5 text-gray-600 bg-white border border-r-0 border-gray-600', currentPage === index && 'bg-blue-500 text-white']" @click="changePage(index)">{{index}}</button>
            </li>
            <li>
                <button class="h-10 px-5 text-gray-600 bg-white border border-gray-600 hover:bg-gray-100" :disabled="currentPage === pageAmount" @click="nextPage">Volgende</button>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    name: "Navigator",
    data() {
        return {
            courseList: this.courses,
            pageAmount: this.pages,
            currentPage: 1
        }
    },
    props: {
        courses: Object,
        pages: Number
    },
    methods: {
        nextPage() {
            if (this.currentPage < this.pageAmount) {
                this.currentPage++;
                this.$emit('page-changed', this.currentPage);
            }
        },
        previousPage() {
            if (this.currentPage > 1) {
                this.currentPage--;
                this.$emit('page-changed', this.currentPage);
            }
        },
        changePage(page) {
            this.currentPage = page;
            this.$emit('page-changed', this.currentPage);
        }
    }
}
</script>

<style scoped>

</style>
