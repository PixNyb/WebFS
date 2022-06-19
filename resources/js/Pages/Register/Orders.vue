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
                        <table class="w-full">
                            <thead class="font-bold bg-gray-300 border-b-2">
                            <tr>
                                <th class="px-64 py-2">Aankoop datum</th>
                                <th class="px-4 py-2">Betaaldatum</th>
                                <th class="px-4 py-2">Betaalkaart</th>
                                <th class="px-4 py-2">Acties</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="order in ordersList.data">
                                <td class="px-4 py-2">{{ order.order_date }}</td>
                                <td class="px-4 py-2">{{ order.payment_date }}</td>
                                <td class="px-4 py-2">{{ order.payment_cardnumber }}</td>
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
        orders: Object
    },
    methods: {
        async list(page=1){
            await axios.get(`/api/orders?page=${page}`).then(({data})=>{
                this.ordersList = data
            }).catch(({ response })=>{
                console.error(response)
            })
        }
    }
}
</script>
