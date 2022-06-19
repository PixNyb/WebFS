
<template>
    <Head title="Gerecht aanmaken" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Gerecht Aanpassen
            </h2>
        </template>

        <div class="py-12">
            <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
                <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div class="mb-4">
                            <Link
                                class="
                                    px-6
                                    py-2
                                    mb-2
                                    text-white
                                    bg-red-500
                                    rounded
                                "
                                @click="destroy(course.id)"
                            >
                                Gerecht verwijderen
                            </Link>
                        </div>
                        <form @submit.prevent="submit">
                            <div v-show="page === 1">
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
                                <div class="mt-4">
                                    <label for="addition">Toevoeging</label>
                                    <textarea
                                        name="addition"
                                        type="text"
                                        v-model="form.addition"
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
                                    >
                                </textarea>
                                </div>

                            </div>
                            <!-- Page 2  -->
                            <div v-show="page === 2">
                                <div>
                                    <label for="category_name">Categorie</label>
                                    <select v-model="form.category_name"
                                            class="
                                            w-full
                                            px-4
                                            py-2
                                            mt-2
                                            border
                                            rounded-md
                                            focus:outline-none
                                            focus:ring-1"

                                    >
                                        <option disabled value="">Selecteer een categorie</option>
                                        <option v-for="category in categories" :value="category.name">
                                            {{ category.name }}
                                        </option>
                                    </select>
                                </div>
                                <div class="mt-4">
                                    <label for="spice_scale">Pittigheid</label>
                                    <select v-model="form.spice_scale"
                                        class="
                                        w-full
                                        px-4
                                        py-2
                                        mt-2
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1"
                                    >
                                        <option disabled value="">Selecteer de pittigheid</option>
                                        <option v-for="spice in spice_scale" :value="spice.rating">
                                            {{ spice.rating }}
                                        </option>
                                    </select>
                                </div>

                            </div>

                            <div class="flex items-center mt-4">
                                <button
                                    class="
                                        px-6
                                        py-2
                                        text-white
                                        bg-gray-900
                                        rounded
                                        mr-2
                                    "
                                    v-if="page > 1"
                                    @click="previousPage"
                                >
                                    Vorige Pagina
                                </button>
                                <button
                                    class="
                                        px-6
                                        py-2
                                        text-white
                                        bg-gray-900
                                        rounded
                                        mr-2
                                    "
                                    v-if="page < pages"
                                    @click="nextPage"
                                >
                                    Volgende Pagina
                                </button>
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
                                    v-if="page === pages"
                                >
                                    Save
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
    setup(props) {
        const form = useForm({
            name: props.course.name,
            category_name: props.course.category_name,
            spice_scale: props.course.spice_scale,
            addition: props.course.addition,
        });
        return { form };
    },
    methods: {
      submit() {
          this.form.put(route("courses.update", this.course.id));
      },
        nextPage() {
          if (this.page < this.pages){
              this.page++;
          }
        },
        previousPage() {
          if (this.page > 1){
              this.page--;
          }
        },
        destroy(id) {
            this.$inertia.delete(route('courses.destroy', id));
        }
    },
    data () {
        return {
            page: 1,
            pages: 2
        }
    },
    props : {
        course: Object,
        categories: Object,
        spice_scale: Object,
        admin: Boolean
    }
}
</script>

