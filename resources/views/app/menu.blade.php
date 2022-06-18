<x-app.page page="Menu" :nav="$navigation">
    {{ var_dump($menuItems) }}
    <table>
        <thead>
            <tr>
                <td>
                    {{ __('menu.dish.name') }}
                </td>
                <td>
                    {{ __('menu.dish.addition') }}
                </td>
                <td>
                    {{ __('menu.dish.price') }}
                </td>
            </tr>
        </thead>
    </table>
</x-app.page>