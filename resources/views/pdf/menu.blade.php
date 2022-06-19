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
                {{ $menuItem->course->spice_scale }}
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