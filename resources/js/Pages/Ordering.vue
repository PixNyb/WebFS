<template>
    <Layout>
        <template #header>
            <h2 class="font-semibold text-xl text-white leading-tight">
                Doe hier je aankoop
            </h2>
            <button
                @click="submit"
                class="px-6 py-2 text-white bg-green-900 rounded mt-4"
            >
                Bestellen
            </button>
        </template>
        <div class="relative h-full w-full">
            <div id="authentication-modal" v-if="ordering" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="toggleOrdering">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">Bestelling plaatsen tafel {{table}}</h3>
                            <p class="text-lg mb-4 font-medium dark:text-white">Het te betalen bedrag: €{{total}}</p>
                            <div>
                                <label for="fullname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Volledige naam</label>
                                <input v-model="full_name" type="text" name="fullname" id="fullname" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                            </div>
                            <div>
                                <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Email</label>
                                <input v-model="email" type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                            </div>
                            <div>
                                <label for="card" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Kaartnummer</label>
                                <input v-model="payment_card" type="text" name="card" id="card" placeholder="NL01RABO0123456789" pattern="[A-Za-z]{2}[0-9]{2}[A-Za-z]*[0-9]{10}" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                            </div>
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" @click="submitOrder">Bestelling plaatsen</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="relative h-full w-full">
            <div id="adding-modal" v-if="addingItem" tabindex="-1" aria-hidden="true" :class="['overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-1/3 w-full  h-modal md:h-full']">
                <div class="relative p-4 w-full max-w-md h-full md:h-auto">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <button type="button" class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white" @click="toggleAdding">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <div class="py-6 px-6 lg:px-8">
                            <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">{{itemToBeAdded.course.name}} toevoegen</h3>
                            <div>
                                <label for="side_dishes" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Bijgerecht</label>
                                <select v-model="itemToBeAdded.side_dish" name="side_dishes" id="side_dishes" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>
                                    <option v-for="side_dish in side_dishes" :value="side_dish.name" >{{side_dish.name}} +{{side_dish.price_addition}}</option>
                                </select>
                            </div>
                            <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" @click="submitAdd">Bestelling plaatsen</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="py-2 bg-red-600">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="px-4">
                        <label for="table" class="text-lg">Tafel</label>
                        <select v-model="table"
                                class="w-full
                        px-4
                        py-2
                        mt-2
                        border
                        rounded-md
                        focus:outline-none
                        focus:ring-1
                        focus:ring-blue-600
                    ">
                            <option v-for="table in tables" :value="table.table_number">{{ table.table_number }}</option>
                        </select>
                    </div>
                    <div class="p-6 bg-white border-b border-gray-200 flex flex-row">
                        <div>
                            <p class="text-xl font-weight-bold px-4 py-1">Gerechten op het menu</p>
                            <table class="w-1/2 border border-gray-600 mx-4">
                                <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-4 py-2">Naam</th>
                                    <th class="px-4 py-2">Toevoeging</th>
                                    <th class="px-4 py-2">Prijs</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="men in menu">
                                    <td class="px-4 py-2">{{ men.course.name }}</td>
                                    <td class="px-4 py-2">{{ men.course.addition }}</td>
                                    <td class="px-4 py-2">{{men.price}}</td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <button
                                            class="text-green-700"
                                            @click="addToCart(men)"
                                        >
                                            Toevoegen
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div >
                            <p class="text-xl font-weight-bold  py-1">Mandje</p>
                            <table class="w-1/2 border border-gray-600">
                                <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-4 py-2">Naam</th>
                                    <th class="px-4 py-2">Toevoeging</th>
                                    <th class="px-4 py-2">Prijs</th>
                                    <th class="px-4 py-2">Hoeveelheid</th>
                                    <th class="px-4 py-2">Acties</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="cartItem in cart">
                                    <td class="px-4 py-2">{{ cartItem.course.name }}</td>
                                    <td class="px-4 py-2">{{ cartItem.course.addition }}</td>
                                    <td class="px-4 py-2">{{ (cartItem.quantity * cartItem.price).toFixed(2) }}</td>
                                    <td class="px-4 py-2"><input type="number" v-model="cartItem.quantity" class="w-14"></td>
                                    <td class="px-4 py-2 font-extrabold flex flex-col">
                                        <button
                                            class="text-red-700"
                                            @click="removeFromCart(cartItem)"
                                        >
                                            Verwijderen
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
    </Layout>
</template>

<script>
import Layout from '@/Layouts/Ordering';
import {useForm} from "@inertiajs/inertia-vue3";
import axios from "axios";
export default {
    name: "Ordering",
    components: {
        Layout,
    },
    props: {
        tables: Object,
        menu: Object,
        side_dishes: Object,
    },
    data() {
        return {
            cart: [],
            table: null,
            email: null,
            full_name: null,
            ordering: false,
            payment_card: null,
            addingItem: false,
            itemToBeAdded: null,
        }
    },
    methods: {
        submit() {
            if (this.table == null) {
                alert("Selecteer eerst een tafel");
                return;
            }
            if (this.cart.length === 0) {
                alert("Selecteer eerst een gerecht");
                return;
            }
            this.toggleOrdering();
        },
        addToCart(item) {
            this.itemToBeAdded = {side_dish: item.standard_side_dish, ...item};
            this.addingItem = true;
        },
        submitAdd() {
            let existing = false;
            this.cart.forEach(cartItem => {
                if (cartItem.number === this.itemToBeAdded.number) {
                    cartItem.quantity++;
                    existing = true;
                }
            });
            if (!existing) {
                const sideDish = this.side_dishes.find(sideDish => sideDish.name === this.itemToBeAdded.side_dish);
                this.cart.push({...this.itemToBeAdded, quantity: 1, price: this.itemToBeAdded.price + sideDish.price_addition});
            }
            this.addingItem = false;
            this.itemToBeAdded = null;
        },
        removeFromCart(item) {
            this.cart = this.cart.filter(cartItem => cartItem.number !== item.number);
        },
        toggleOrdering() {
            this.ordering = !this.ordering;
        },
        toggleAdding() {
            this.addingItem = !this.addingItem;
        },
        submitOrder() {
            if (this.email == null) {
                alert("Vul eerst uw email in");
                return;
            }
            if (this.full_name == null) {
                alert("Vul eerst uw naam in");
                return;
            }
            if (this.payment_card == null) {
                alert("Vul eerst uw creditcardnummer in");
                return;
            }

            axios.post('/api/client_order/finish-order', {
                table: this.table,
                cart: this.cart,
                email: this.email,
                full_name: this.full_name,
                payment_card: this.payment_card,
            }).then(response => {
                alert("Bestelling is succesvol geplaatst");
                this.ordering = false;
                this.cart = [];
                this.table = null;
                this.email = null;
                this.full_name = null;
                this.payment_card = null;
            }).catch(error => {
                alert(error.response.data.error);
            });

            this.ordering = false;
        }
    },
    computed: {
        total() {
            return this.cart.reduce((acc, cartItem) => acc + cartItem.price * cartItem.quantity, 0).toFixed(2);
        }
    }
}
</script>
