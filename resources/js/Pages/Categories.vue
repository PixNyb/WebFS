<template>
    <Head title="Categorieën" />
    <BreezeAuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Categorieën
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
                                :href="route('categories.create')"
                            >
                                Categorie aanmaken
                            </Link>
                        </div>
                        <table>
                            <thead class="font-bold bg-gray-300 border-b-2">
                            <tr>
                                <th class="px-8 py-2">Naam</th>
                                <th class="px-8 py-2">Acties</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="category in categories.data">
                                <td class="px-8 py-2">{{ category.name }}</td>
                                <td class="px-8 py-2 font-extrabold flex flex-col">
                                    <Link
                                        class="text-red-700"
                                        @click="destroy(category.name)"
                                    >
                                        Delete
                                    </Link>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <pagination :data="categories" @oagination-change-page="list"></pagination>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script>
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import { Head, Link } from '@inertiajs/inertia-vue3';

export default {
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link
    },
    props: {
        categories: Object
    },
    methods: {
        destroy(name) {
            this.$inertia.delete(route('categories.destroy', name));
        }
    }
}
</script>
