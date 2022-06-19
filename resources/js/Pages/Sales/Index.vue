
<template>
    <Head title="Menu" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Sales
            </h2>
        </template>
        <!--  Create modal   -->
        <div class="relative h-full w-full">
            <div id="authentication-modal" v-if="adding" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="disableAdding">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Sale aanmaken</h3>
                            <form class="space-y-6" @submit.prevent="submit">
                                <input v-model="form.course_id" type="hidden" name="course_id">
                                <div>
                                    <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Naam</label>
                                    <input v-model="form.name" type="text" name="name" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="description" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Beschrijving</label>
                                    <textarea v-model="form.description" type="text" name="description" id="description" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required></textarea>
                                </div>
                                <div>
                                    <label for="price" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Prijs</label>
                                    <input v-model="form.price" type="number" step="0.10" name="price" id="price" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="amount" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Aantal in per sale</label>
                                    <input v-model="form.sale_amount" type="number" step="1" name="amount" id="amount" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="start_date" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Start datum</label>
                                    <input v-model="form.start_date" type="date" name="start_date" id="start_date" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="end_date" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Eind datum</label>
                                    <input v-model="form.end_date" type="date" name="end_date" id="end_date" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Toevoegen aan de sale</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  End create modal   -->

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200 flex flex-row">
                        <div>
                            <p class="text-xl font-weight-bold px-4 py-1">Gerechten buiten de sale</p>
                            <table class="w-1/2 border border-gray-600 mx-4">
                                <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-4 py-2">Naam</th>
                                    <th class="px-4 py-2">Categorie</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="course in showableCourseList">
                                    <td class="px-4 py-2">{{ course.name }}</td>
                                    <td class="px-4 py-2">{{ course.category_name }}</td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <button
                                            class="text-green-700"
                                            @click="setAdding(course)"
                                        >
                                            Toevoegen aan sale
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div >
                            <p class="text-xl font-weight-bold  py-1">Gerechten in de sale</p>
                            <table class="w-1/2 border border-gray-600">
                                <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-4 py-2">Gerecht Naam</th>
                                    <th class="px-4 py-2">Sale Amount</th>
                                    <th class="px-4 py-2">Price</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="sale in saleItems">
                                    <td class="px-4 py-2">{{ sale.course.name }}</td>
                                    <td class="px-4 py-2">{{ sale.promotion_amount }}</td>
                                    <td class="px-4 py-2">{{ sale.promotion_price }}</td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <Link
                                            class="text-red-700"
                                            @click="removeSaleItem(sale)"
                                        >
                                            Promotie verwijderen
                                        </Link>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script>
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import {Head, Link, useForm} from '@inertiajs/inertia-vue3';
import axios from "axios";
import Pagination from "@/Components/Pagination";

export default {
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        Pagination
    },
    setup() {
        const form = useForm({
            course_id: null,
            sale_amount: null,
            name: null,
            description: null,
            price: null,
            start_date: null,
            end_date: null,
        });
        return {form}
    },
    props: {
        courses: Object,
        sales: Object,
        admin: Boolean,
    },
    data () {
        return {
            courseList: this.courses,
            saleItems: this.sales,
            adding: false,
            addingCourse: {},
            editing: false,
            editingItem: {},
            numberError: null,
            priceError: null,
            sideDishError: null
        }
    },
    methods: {
        removeSaleItem(item) {
            axios.delete(`/api/sale/${item.id}`).then(response => {
                this.saleItems = response.data;
            });
        },
        setAdding(course) {
            this.adding = true;
            this.addingCourse = course;
            this.form.course_id = course.id;
        },
        disableAdding() {
            this.adding = false;
            this.addingCourse = {};
            this.form.course_id = null;
            this.form.price = null;
            this.form.sale_amount = null;
            this.form.start_date = null;
            this.form.end_date = null;
            this.form.name = null;
            this.form.description = null;
        },
        submit() {
            axios.post('/api/sale', this.form).then(response => {
                this.saleItems = response.data;
                this.disableAdding();
            });
        },

        update() {
            axios.put(`/api/sale/${this.editingItem.id}`, this.form).then(response => {
                this.saleItems = response.data;
                this.stopEditing();
            }).catch(error => {
                if (error.response.data.message().contains('number')) {
                    this.numberError = error.response.data.message();
                }else if (error.response.data.message().contains('price')) {
                    this.priceError = error.response.data.message();
                }
            });
        }
    },
    computed: {
        showableCourseList() {
            return this.courseList.filter(course => {
                for (let sale of this.saleItems) {
                    if (course.id === sale.course_id) {
                        return false;
                    }
                }
                return true;
            })
        }
    }

}
</script>
