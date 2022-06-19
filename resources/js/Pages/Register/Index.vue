<template>
    <Head title="Menu" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Cash Register
            </h2>
        </template>
        <div class="relative h-full w-full">
            <div id="authentication-modal" v-if="paying" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="stopPaying">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Afrekenen</h3>
                            <p class="text-lg mb-4 font-medium dark:text-white">Het te betalen bedrag: €{{totalPrice}}</p>
                            <form @submit.prevent="finishOrder">
                                <div>
                                    <label for="card" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Kaartnummer</label>
                                    <input v-model="form.card" type="text" name="card" id="card" placeholder="NL01RABO0123456789" pattern="[A-Za-z]{2}[0-9]{2}[A-Za-z]*[0-9]{10}" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" @click="finishOrder">Betalen</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="relative h-full w-full">
            <div id="remarks-modal" v-if="remarking" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="stopRemarking">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Opmerking toevoegen</h3>
                                <div>
                                    <label for="remarks" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Opmerking</label>
                                    <input v-model="remarkingItem.remarks" type="text" name="remarks" id="remarks" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" @click="stopRemarking">Toevoegen</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-full h-[36rem] flex mr-2">
            <div class="w-2/3 h-[36rem] max-h-[36rem] border border-blue-800 overflow-auto grid grid-cols-1 justify-items-center mr-2 rounded-lg">
                <div v-for="category in categories" class="w-full grid grid-cols-1 justify-items-center">
                    <p class="text-xl mb-2">{{category.name}}</p>
                    <table class="w-full mx-4 mb-10 text-center">
                        <thead class="font-bold ">
                        <tr>
                            <th class="px-4 py-2">Nummer</th>
                            <th class="px-4 py-2">Naam</th>
                            <th class="px-4 py-2">Prijs</th>
                            <th class="px-4 py-2">Acties</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr v-for="items in getMenuForCategory(category.name)">
                                <td class="px-4 py-2">{{items.number}}</td>
                                <td class="px-4 py-2">{{items.course.name}}</td>
                                <td class="px-4 py-2">€{{items.price.toFixed(2)}}</td>
                                <td class="px-4 py-2">
                                    <button class="bg-gray-300 rounded-lg p-1 hover:bg-gray-600 hover:text-white"
                                        @click="addToCart(items)"
                                    >
                                        Toevoegen
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="w-1/3 h-full flex flex-col pr-2">
                <div class="h-4/5 border border-blue-600 rounded-lg mb-2 overflow-x-hidden overflow-auto">
                    <p class="text-xl text-center">Mandje</p>
                    <table class="mx-1 mb-10 text-center ">
                        <thead class="font-bold ">
                        <tr>
                            <th class="px-4 py-2">Nummer</th>
                            <th class="px-4 py-2">Naam</th>
                            <th class="px-4 py-2">Aantal</th>
                            <th class="px-4 py-2">Prijs</th>
                            <th class="px-4 py-2">Acties</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr v-for="items in cart">
                                <td class="px-4 py-2">{{items.number}}</td>
                                <td class="px-4 py-2">{{items.course.name}}</td>
                                <td class="px-4 py-2"><input v-model="items.quantity" class="w-10"/></td>
                                <td class="px-4 py-2">€{{(items.price * items.quantity).toFixed(2)}}</td>
                                <td class="px-4 py-2">
                                    <button class="bg-gray-300 rounded-lg p-1 hover:bg-gray-600 hover:text-white"
                                        @click="removeFromCart(items)"
                                    >
                                        Verwijderen
                                    </button>
                                    <button class="bg-gray-300 rounded-lg p-1 hover:bg-gray-600 hover:text-white"
                                            @click="setRemarking(items)"
                                    >
                                        Opmerking toevoegen
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="h-1/5 border border-blue-600 rounded-lg">
                    <div class="flex flex-row ">
                        <p class="text-md px-8 mt-1">Totaal bedrag</p>
                        <p class="text-md px-12 mt-1">€{{totalPrice}}</p>
                        <div class="flex flex-row">
                            <button class="bg-gray-300 rounded-lg max-h-10 p-1 hover:bg-blue-600 hover:text-white text-sm m-1"
                                @click="checkout"
                                    >
                                Afrekenen
                            </button>
                            <button class="bg-gray-300 rounded-lg max-h-10 p-1 hover:bg-blue-600 hover:text-white text-sm m-1"
                                    @click="clearCart"
                            >
                                Verwijderen
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </BreezeAuthenticatedLayout>
</template>

<script>
import BreezeAuthenticatedLayout from "@/Layouts/Authenticated";
import {Head, Link, useForm} from "@inertiajs/inertia-vue3";
import Pagination from "@/Components/Pagination";

export default {
    name: "Cash Register",
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        Pagination
    },
    setup() {
      const form = useForm({
         card: null
      });
      return {form};
    },
    data() {
      return {
          cart: [],
          paying: false,
          remarking: false,
          remarkingItem: null,
      }
    },
    props: {
        admin: Boolean,
        menu: Object,
        categories: Object,
    },
    methods: {
        getMenuForCategory(category) {
            return this.menu.filter(item => item.course.category_name === category);
        },
        addToCart(item) {
            let existing = false;
            this.cart.forEach(cartItem => {
                if (cartItem.number === item.number) {
                    cartItem.quantity++;
                    existing = true;
                }
            });
            if (!existing) {
                this.cart.push({...item, quantity: 1, remarks: null});
            }
        },
        removeFromCart(item) {
            this.cart = this.cart.filter(cartItem => cartItem.number !== item.number);
        },
        checkout(){
            this.paying = true;
        },
        clearCart(){
            this.cart = [];
        },
        finishOrder() {
            this.$inertia.post('/api/cash-register/finish-order', {
                cart: this.cart,
                card: this.form.card
            });
            this.cart = [];
            this.form.card = null;
            this.paying = false;
        },
        stopPaying() {
            this.paying = false;
        },
        setRemarking(item) {
            this.remarking = true;
            this.remarkingItem = item;
        },
        stopRemarking() {
            this.remarking = false;
            this.remarkingItem = null;
        },
    },
    computed: {
        totalPrice() {
            let total = 0;
            this.cart.forEach(item => {
                total += item.price * item.quantity;
            });
            //return total in the format of #.##
            return total.toFixed(2);
        }
    }
}
</script>
