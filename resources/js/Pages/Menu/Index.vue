
<template>
    <Head title="Menu" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Menu
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
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">{{addingCourse.name}} toevoegen aan menu</h3>
                            <form class="space-y-6" @submit.prevent="submit">
                                <input v-model="form.course_id" type="hidden" name="course_id">
                                <div>
                                    <label for="price" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Prijs</label>
                                    <input v-model="form.price" type="number" step="0.10" name="price" id="price" placeholder="10.90" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="side_dish" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Standaard Bijgerecht</label>
                                    <select v-model="form.standard_side_dish" id="side_dish" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white">
                                        <option value="" disabled>Selecteer standaard bijgerecht</option>
                                        <option v-for="side_dish in side_dishes" :value="side_dish.name">{{side_dish.name}}</option>
                                    </select>
                                </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Toevoegen aan menu</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  End create modal   -->
        <!--  Edit modal      -->
        <div class="relative h-full w-full">
            <div id="edit-modal" v-if="editing" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="stopEditing">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">{{editingItem.number}} aanpassen</h3>
                            <form class="space-y-6" @submit.prevent="update">
                                <input v-model="form.course_id" type="hidden" name="course_id">
                                <div>
                                    <label for="price2" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Prijs</label>
                                    <p class="text-red-600" v-if="priceError !== null">{{priceError}}</p>
                                    <input v-model="form.price" type="number" step="0.10" name="price" id="price2" placeholder="10.90" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <div>
                                    <label for="side_dish2" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Standaard Bijgerecht</label>
                                    <p class="text-red-600" v-if="sideDishError">{{sideDishError}}</p>
                                    <select v-model="form.standard_side_dish" id="side_dish2" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white">
                                        <option value="">Selecteer standaard bijgerecht</option>
                                        <option v-for="side_dish in side_dishes" :value="side_dish.name">{{side_dish.name}}</option>
                                    </select>
                                </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Aanpassen</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  End edit modal   -->
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200 flex flex-row">
                        <div>
                            <p class="text-xl font-weight-bold px-4 py-1">Gerechten buiten het menu</p>
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
                                            Toevoegen aan menu
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div >
                            <p class="text-xl font-weight-bold  py-1">Gerechten in het menu</p>
                            <table class="w-1/2 border border-gray-600">
                                <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-4 py-2">Naam</th>
                                    <th class="px-4 py-2">Nummer</th>
                                    <th class="px-4 py-2">Price</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="menuItem in menuItems">
                                    <td class="px-4 py-2">{{ menuItem.course.name }}</td>
                                    <td class="px-4 py-2">{{ menuItem.number }}</td>
                                    <td class="px-4 py-2">{{ menuItem.price }}</td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <Link
                                            class="text-red-700"
                                            @click="removeCourseFromMenu(menuItem)"
                                        >
                                            Verwijderen uit menu
                                        </Link>
                                        <button
                                            class="text-green-700"
                                            @click="startEditing(menuItem)"
                                        >
                                            Aanpassen
                                        </button>
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
            number: null,
            spice: null,
            price: null,
            standard_side_dish: null,
        });
        return {form}
    },
    props: {
        courses: Object,
        menu: Object,
        spice_scale: Object,
        side_dishes: Object,
        admin: Boolean,
    },
    data () {
        return {
            courseList: this.courses,
            menuItems: this.menu,
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
        removeCourseFromMenu(item) {
            axios.delete(`/api/menu/${item.number}`).then(response => {
                this.menuItems = response.data;
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
            this.form.spice = null;
            this.form.standard_side_dish = null;
        },
        submit() {
            axios.post('/api/menu', this.form).then(response => {
                this.menuItems = response.data;
                this.disableAdding();
            });
        },
        startEditing(item) {
            this.form.course_id = item.course_id;
            this.form.number = item.number;
            this.form.spice = item.spice_scale;
            this.form.price = item.price;
            this.form.standard_side_dish = item.standard_side_dish;
            this.editing = true;
            this.editingItem = item;
        },
        stopEditing() {
            this.editing = false;
            this.editingItem = {};
            this.form.course_id = null;
            this.form.number = null;
            this.form.spice = null;
            this.form.price = null;
            this.form.standard_side_dish = null;
        },
        update() {
            axios.put(`/api/menu/${this.editingItem.number}`, this.form).then(response => {
                this.menuItems = response.data;
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
                for (let menuItem of this.menuItems) {
                    if (course.id === menuItem.course_id) {
                        return false;
                    }
                }
                return true;
            })
        }
    }

}
</script>
