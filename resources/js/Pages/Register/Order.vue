<template>
    <Head title="Aankoop" />
    <BreezeAuthenticatedLayout :admin="admin">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Aankoop
            </h2>
        </template>
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <h1 class="text-xl">Info</h1>
                        <div class="flex flex-row">
                            <p class="pr-12"><strong>Besteldatum:</strong> {{order.order_date}}</p>
                            <p><strong>Betaaldatum:</strong> {{order.payment_date}}</p>
                        </div>
                        <div class="flex flex-row">
                            <p class="pr-9"><strong>Betaalkaart:</strong> {{order.payment_cardnumber}}</p>
                            <p><strong>Totaal prijs:</strong> {{totalPrice}}</p>
                        </div>
                        <p class="text-xl font-weight-bold py-2">Producten</p>
                        <table>
                            <thead class="font-bold bg-gray-300 border-b-2">
                                <tr>
                                    <th class="px-8 py-2">Naam</th>
                                    <th class="px-8 py-2">Aantal</th>
                                    <th class="px-8 py-2">Prijs per stuk</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="orderItem in order.items">
                                    <td class="px-8 py-2">{{ orderItem.course.name }}</td>
                                    <td class="px-8 py-2">{{ orderItem.quantity }}</td>
                                    <td class="px-8 py-2">€{{ orderItem.price }}</td>
                                </tr>
                            </tbody>
                        </table>
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
    name: "Order",
    components: {
        BreezeAuthenticatedLayout,
        Head,
        Link,
        Pagination
    },
    props: {
        admin: Boolean,
        order: Object
    },
    computed: {
        totalPrice: function() {
            return this.order.items.reduce((acc, item) => {
                return acc + item.price * item.quantity;
            }, 0);
        }
    }
}
</script>
