<x-app.page page="{{ __('page.sales') }}" :nav="$navigation">
    <div class="text">
        <table>
            <thead>
                <tr>
                    <th>
                        {{ __('sales.sale.name') }}
                    </th>
                    <th>
                        {{ __('sales.sale.description') }}
                    </th>
                    <th>
                        {{ __('sales.sale.course_name') }}
                    </th>
                    <th>
                        {{ __('sales.sale.condition') }}
                    </th>
                    <th>
                        {{ __('sales.sale.end_date') }}
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($promotions as $promotion)
                <tr>
                    <td>
                        {{ $promotion->name }}
                    </td>
                    <td>
                        {{ $promotion->description }}
                    </td>
                    <td>
                        {{ $promotion->course->name }}
                    </td>
                    <td>
                        {{ __('sales.sale.sale_text', ['amount' => $promotion->promotion_amount, 'price' => number_format((float)$promotion->promotion_price, 2, '.', '')]) }}
                    </td>
                    <td>
                        {{ __('sales.sale.end_text', ['date' => $promotion->end_date->translatedFormat('D j F Y')]) }}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</x-app.page>