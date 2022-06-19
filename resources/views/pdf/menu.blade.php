<style>
    table {
        width: 100%;
        border-spacing: 15px 5px;
        border-collapse: separate;
    }

    table th {
        text-align: left;
    }

    .page-break {
        page-break-before: always;
    }
</style>

<h1>{{ __('page.menu') }}</h1>
<table>
    <thead>
        <tr>
            <th>
                {{ __('menu.dish.number') }}
            </th>
            <th>
                {{ __('menu.dish.name') }}
            </th>
            <th>
                {{ __('menu.dish.spice_scale') }}
            </th>
            <th>
                {{ __('menu.dish.price') }}
            </th>
            <th>
                {{ __('menu.dish.allergens') }}
            </th>
        </tr>
    </thead>
    <tbody>
        <?php $lastCategory = ''; ?>
        @foreach ($menuItems as $menuItem)
        @if ($lastCategory != $menuItem->course->category_name)
        <?php $lastCategory = $menuItem->course->category_name ?>
        <tr>
            <td></td>
            <td>
                <h3>{{ $lastCategory }}</h3>
            </td>
            <td></td>
        </tr>
        @endif
        <tr>
            <td>
                {{ $menuItem->number }}
            </td>
            <td>
                {!! $menuItem->course->name !!}
                @if ($menuItem->standard_side_dish != '')
                <br />(standaard met {{ $menuItem->standard_side_dish}})
                @endif
            </td>
            <td>
                @for ($i = 0; $i < $menuItem->course->spice_scale - 1; $i++)
                    *
                    @endfor
            </td>
            <td>
                €{{ number_format((float)$menuItem->price, 2, '.', '') }}
            </td>
            <td>
                @for ($i = 0; $i < count($menuItem->course->allergens); $i++)
                    @if ($i != count($menuItem->course->allergens) - 1)
                    {{ $menuItem->course->allergens[$i]->allergen }},
                    @else
                    {{ $menuItem->course->allergens[$i]->allergen }}
                    @endif
                    @endfor
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
<div class="page-break"></div>
<h1>{{ __('page.sales') }}</h1>
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
                {{ $promotion->end_date->translatedFormat('D j F Y') }}
            </td>
        </tr>
        @endforeach
    </tbody>
</table>