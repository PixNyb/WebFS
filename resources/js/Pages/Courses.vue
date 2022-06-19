
<template>
    <Head title="Courses" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Courses
            </h2>
        </template>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div class="mb-4">
                            <Link
                                class="
                                    px-6
                                    py-2
                                    mb-2
                                    text-green-100
                                    bg-green-500
                                    rounded
                                "
                                :href="route('courses.create')"
                                v-if="admin"
                            >
                                Gerecht aanmaken
                            </Link>
                        </div>
                        <div class="w-full flex-row flex">
                            <div class="flex w-1/3 flex-col mx-1">
                                <label for="course_name">Naam van gerecht</label>
                                <input
                                    type="text"
                                    v-model="course_name"
                                    placeholder="Typ hier de naam van het gerecht"
                                    class="
                                        px-4
                                        py-2
                                        mt-2
                                        mb-4
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1
                                        focus:ring-blue-600
                                    "
                                />
                                <button class="bg-gray-300 rounded-lg max-h-10 py-1 hover:bg-blue-600 hover:text-white text-sm mb-1"
                                        @click="searchCourseName"
                                >
                                    Zoeken op naam
                                </button>
                            </div>
                            <div class="flex w-1/3 flex-col mx-1">
                                <label for="category">Categorie</label>
                                <input
                                    type="text"
                                    v-model="category"
                                    placeholder="Typ hier de categorie van het gerecht"
                                    class="
                                        px-4
                                        py-2
                                        mt-2
                                        mb-4
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1
                                        focus:ring-blue-600
                                    "
                                />
                                <button class="bg-gray-300 rounded-lg max-h-10 py-1 hover:bg-blue-600 hover:text-white text-sm mb-1"
                                        @click="searchCategory"
                                >
                                    Zoeken op categorie
                                </button>
                            </div>
                            <div class="flex w-1/3 flex-col mx-1">
                                <label for="number">Nummer</label>
                                <input
                                    type="text"
                                    v-model="menu_number"
                                    placeholder="Typ hier menu nummer van het gerecht"
                                    class="
                                        px-4
                                        py-2
                                        mt-2
                                        mb-4
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1
                                        focus:ring-blue-600
                                    "
                                />
                                <button class="bg-gray-300  rounded-lg max-h-10 py-1 hover:bg-blue-600 hover:text-white text-sm mb-1"
                                        @click="searchMenuNumber"
                                >
                                    Zoeken op menu nummer
                                </button>
                            </div>
                        </div>
                        <table class="w-full">
                            <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-64 py-2">Naam</th>
                                    <th class="px-4 py-2">Categorie</th>
                                    <th class="px-4 py-2">Pittigheid</th>
                                    <th class="px-4 py-2">Actief</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="course in courseList.data">
                                    <td class="px-4 py-2">{{ course.name }}</td>
                                    <td class="px-4 py-2">{{ course.category_name }}</td>
                                    <td class="px-4 py-2">{{ course.spice_scale }}</td>
                                    <td class="px-4 py-2">{{ course.active }}</td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <Link
                                            class="text-green-700"
                                            :href="route('courses.edit', course.id)"
                                        >
                                            Edit
                                        </Link>
                                        <Link
                                            @click="toggleActivity(course.id)"
                                            :class="course.active ? 'text-red-700' : 'text-green-700'"
                                        >Maak {{course.active ? 'inactief' : 'actief'}}</Link
                                        >
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <Pagination :courses="courseList.data" :pages="Math.ceil(courseList.total/courseList.per_page)" v-on:page-changed="list"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script>
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import { Head, Link } from '@inertiajs/inertia-vue3';
import axios from "axios";
import Pagination from "@/Components/Pagination";

export default {
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        Pagination
    },
    props: {
        courses: Object,
        admin: Boolean
    },
    data () {
        return {
            courseList: this.courses,
            course_name: null,
            category: null,
            menu_number: null,
        }
    },
    methods: {
        toggleActivity(id) {
            this.$inertia.post(route("courses.activity", id));
        },
        async list(page=1){
            await axios.get(`/api/courses?page=${page}`).then(({data})=>{
                this.courseList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        },
        async searchCourseName() {
            await axios.get(`/api/courses/searchByName/${this.course_name}`).then(({data})=>{
                this.courseList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        },
        async searchCategory() {
            await axios.get(`/api/courses/searchByCategory/${this.category}`).then(({data})=>{
                this.courseList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        },
        async searchMenuNumber() {
            await axios.get(`/api/courses/searchByNumber/${this.menu_number}`).then(({data})=>{
                this.courseList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        }
    },

}
</script>
