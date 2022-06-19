<template>
    <Head title="Menu" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Aankopen
            </h2>
        </template>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div class="flex flex-row ">
                            <form @submit.prevent="performFilters">
                                <div class="flex flex-row">
                                    <div class="pr-8">
                                        <label for="table" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Tafelnummer</label>
                                        <select v-model="filter.table_number" name="table" id="table" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white">
                                            <option value="">Alle</option>
                                            <option v-for="table in tables" :value="table.table_number" >{{table.table_number}}</option>
                                        </select>
                                    </div>
                                    <div class="pr-8">
                                        <label for="date" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Datum</label>
                                        <input  v-model="filter.date" type="date" name="date" id="date" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 mb-2 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"/>
                                    </div>
                                </div>
                                <button type="submit" class="w-full mb-8 text-white bg-blue-700 h-14 align-se hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Filteren</button>                            </form>
                        </div>
                        <table class="w-full">
                            <thead class="font-bold bg-gray-300 border-b-2">
                            <tr>
                                <th class="px-64 py-2">Aankoop datum</th>
                                <th class="px-4 py-2">Betaaldatum</th>
                                <th class="px-4 py-2">Betaalkaart</th>
                                <th class="px-4 py-2">Tafelnummer</th>
                                <th class="px-4 py-2">Acties</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="order in ordersList.data">
                                <td class="px-4 py-2">{{ order.order_date }}</td>
                                <td class="px-4 py-2">{{ order.payment_date }}</td>
                                <td class="px-4 py-2">{{ order.payment_cardnumber }}</td>
                                <td class="px-4 py-2">{{ order.table_number }}</td>
                                <td class="px-4 py-2 font-extrabold flex flex-col">
                                    <Link
                                        :href="route('order.view', order.id)"
                                        class="text-green-700"
                                    >Bekijk</Link
                                    >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div>
                            <Pagination :courses="ordersList.data" :pages="Math.ceil(ordersList.total / ordersList.per_page)" v-on:page-changed="list"/>
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
import axios from "axios";

export default {
    name: "Orders",
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        Pagination
    },
    data(props) {
        return {
            ordersList: props.orders
        }
    },
    props: {
        admin: Boolean,
        orders: Object,
        tables: Object
    },
    methods: {
        async list(page=1){
            await axios.get(`/api/orders?page=${page}`).then(({data})=>{
                this.ordersList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        },
        async performFilters() {
            if (this.filter.table_number && !this.filter.date) {
                await axios.get(`/api/ordersForTableNumber/${this.filter.table_number}`).then(({data})=>{
                    this.ordersList = data
                }).catch(({ response })=>{
                    console.error(response)
                })
            }else if (!this.filter.table_number && this.filter.date) {
                await axios.get(`/api/ordersForDate/${this.filter.date}`).then(({data}) => {
                    this.ordersList = data
                }).catch(({response}) => {
                    console.error(response)
                })
            }else if (this.filter.table_number && this.filter.date) {
                await axios.get(`/api/ordersForTableNumberAndDate/${this.filter.table_number}/${this.filter.date}`).then(({data}) => {
                    this.ordersList = data
                }).catch(({response}) => {
                    console.error(response)
                })
            }else {
                await this.list()
            }
        }
    },
    setup() {
        const filter = useForm({
            table_number: null,
            date: null,
        });

        return {filter};
    }
}
</script>
