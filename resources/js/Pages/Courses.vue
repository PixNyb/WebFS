
<template>
    <Head title="Courses" />
    <BreezeAuthenticatedLayout>
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
                            >
                                Gerecht aanmaken
                            </Link>
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
                            <Pagination :courses="courseList.data" :pages="courseList.total%courseList.per_page" v-on:page-changed="list"/>
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
        courses: Object
    },
    data () {
        return {
            courseList: this.courses,
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
        }
    },

}
</script>
