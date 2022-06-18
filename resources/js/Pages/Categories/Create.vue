
<template>
    <Head title="Gerecht aanmaken" />
    <BreezeAuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Gerecht aanmaken
            </h2>
        </template>

        <div class="py-12">
            <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
                <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <form @submit.prevent="submit">
                            <div>
                                <div>
                                    <label for="name">Naam</label>
                                    <input
                                        type="text"
                                        v-model="form.name"
                                        class="
                                        w-full
                                        px-4
                                        py-2
                                        mt-2
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1
                                        focus:ring-blue-600
                                    "
                                    />
                                </div>
                            </div>
                            <div class="flex items-center mt-4">
                                <button
                                    class="
                                        px-6
                                        py-2
                                        text-white
                                        bg-green-900
                                        rounded
                                    "
                                >
                                    Opslaan
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script>
import {useForm} from "@inertiajs/inertia-vue3";
import BreezeAuthenticatedLayout from '@/Layouts/Authenticated.vue';
import { Head, Link } from '@inertiajs/inertia-vue3';
import BreezeLabel from "@/Components/Label";
export default {

    name: "Create",
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        BreezeLabel
    },
    setup() {
        const form = useForm({
            name: null,
        });
        return { form };
    },
    methods: {
        submit() {
            this.form.post(route("categories.store"))
        },
    },
}
</script>

