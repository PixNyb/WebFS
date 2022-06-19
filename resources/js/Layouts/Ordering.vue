<script setup>
import { ref } from 'vue';

const showingNavigationDropdown = ref(false);
</script>
<template>
    <div>
        <div class="min-h-screen bg-gray-100">
            <!-- Page Heading -->
            <header class="bg-red-600 shadow" v-if="$slots.header">
                <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                    <slot name="header" />
                </div>
            </header>

            <!-- Page Content -->
            <main class=" overflow-x-hidden">
                <slot />
            </main>
        </div>
    </div>
</template>
