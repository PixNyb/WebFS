
<template>
    <Head title="Gerecht aanmaken" />
    <BreezeAuthenticatedLayout :admin="admin">
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
                                <div class="mt-4 flex flex-wrap">
                                    <div class="m-4" v-for="allergen in allergens">
                                        <label :for="allergen.allergen">{{allergen.allergen}}</label>
                                        <input type="checkbox" :value="allergen.allergen" v-model="form.allergenList"
                                                  class="
                                        px-4
                                        py-2
                                        mt-2
                                        border
                                        rounded-md
                                        focus:outline-none
                                        focus:ring-1"
                                        />
                                    </div>
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
import Checkbox from "@/Components/Checkbox";
export default {

    name: "Create",
    components: {
        Checkbox,
        BreezeAuthenticatedLayout,
        Head,
        Link,
        BreezeLabel
    },
    setup() {
        const form = useForm({
            name: null,
            category_name: null,
            spice_scale: null,
            addition: null,
            allergenList: []
        });
        return { form };
    },
    methods: {
      submit() {
          this.form.post(route("courses.store"))
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
        }
    },
    data () {
        return {
            page: 1,
            pages: 2
        }
    },
    props : {
        categories: Object,
        spice_scale: Object,
        admin: Boolean,
        allergens: Object
    }
}
</script>

